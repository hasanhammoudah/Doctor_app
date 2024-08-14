import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  //specilaizations
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(
          List<SpecializationsData?>? specializationDataList) =
      specializationsSuccess;
  const factory HomeState.specializationsError(ErrorHandler errorHandler) =
      SpecializationsError;

  const factory HomeState.doctorSuccess(List<Doctors?>? doctorsList) =
      DoctorsSuccess;

       const factory HomeState.doctorsError(ErrorHandler errorHandler) =
      DoctorsError;


}
