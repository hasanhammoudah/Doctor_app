import 'package:doctor/core/helpers/extenstions.dart';
import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/features/home/data/models/specializations_response_model.dart';
import 'package:doctor/features/home/data/repos/home_repo.dart';
import 'package:doctor/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(success: (specializationsResponseModel) {
      specializationsList =
          specializationsResponseModel.specializationDataList ?? [];
      getDoctorsList(specializationId: specializationsList?.first?.id);

      emit(HomeState.specializationsSuccess(specializationsList));
    }, failure: (errorHandler) {
      emit(HomeState.specializationsError(errorHandler));
    });
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecailizionId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No Doctors Found')));
    }
  }

  getDoctorsListBySpecailizionId(specializationId) {
    return specializationsList?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
