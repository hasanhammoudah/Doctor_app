import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_service.dart';
import 'package:doctor/core/networking/dio_factory.dart';
import 'package:doctor/features/home/data/apis/home_api_service.dart';
import 'package:doctor/features/home/data/repos/home_repo.dart';
import 'package:doctor/features/home/logic/cubit/home_cubit.dart';
import 'package:doctor/features/login/data/repos/login_repo.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/features/signup/data/repos/sign_up_repo.dart';
import 'package:doctor/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));


    // register
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  
    // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
 // getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

}
