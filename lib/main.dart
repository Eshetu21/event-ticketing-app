import 'package:crypto/core/theme/theme.dart';
import 'package:crypto/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:crypto/features/auth/data/repositories/auth_repository_imp.dart';
import 'package:crypto/features/auth/domain/usecases/login_usecase.dart';
import 'package:crypto/features/auth/domain/usecases/register_usercase.dart';
import 'package:crypto/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:crypto/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => AuthBloc(
                registerUsercase: RegisterUsercase(
                    authRepository: AuthRepositoryImp(
                        authRemoteDataSource: AuthRemoteDataSource())),
                loginUsecase: LoginUsecase(
                    authRepository: AuthRepositoryImp(
                        authRemoteDataSource: AuthRemoteDataSource()))))
      ],
      child: MaterialApp(
          theme: AppTheme.lightThemeMode,
          debugShowCheckedModeBanner: false,
          home: SplashScreen()),
    );
  }
}

