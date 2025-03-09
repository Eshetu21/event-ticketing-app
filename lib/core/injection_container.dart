`import 'package:crypto/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:crypto/features/auth/data/repositories/auth_repository_imp.dart';
import 'package:crypto/features/auth/domain/repositories/auth_repository.dart';
import 'package:crypto/features/auth/domain/usecases/login_usecase.dart';
import 'package:crypto/features/auth/domain/usecases/register_usercase.dart';
import 'package:crypto/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void setupDependencies() {
  sl.registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSource());
  sl.registerLazySingleton<AuthRepository>(() =>
      AuthRepositoryImp(authRemoteDataSource: sl<AuthRemoteDataSource>()));
  sl.registerLazySingleton(
      () => RegisterUsercase(authRepository: sl<AuthRepository>()));
  sl.registerLazySingleton(
      () => LoginUsecase(authRepository: sl<AuthRepository>()));
  sl.registerLazySingleton(() => AuthBloc(
      registerUsercase: sl<RegisterUsercase>(),
      loginUsecase: sl<LoginUsecase>()));
}

