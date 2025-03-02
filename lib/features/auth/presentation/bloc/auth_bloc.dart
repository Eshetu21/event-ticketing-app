import 'package:crypto/features/auth/domain/usecases/login_usecase.dart';
import 'package:crypto/features/auth/domain/usecases/register_usercase.dart';
import 'package:crypto/features/auth/presentation/bloc/auth_event.dart';
import 'package:crypto/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final RegisterUsercase registerUsercase;
  final LoginUsecase loginUsecase;

  AuthBloc({required this.registerUsercase, required this.loginUsecase})
      : super(AuthInitial()) {
    on<RegisterEvent>(_onRegister);
    on<LoginEvent>(_onLogin);
  }
  Future<void> _onRegister(RegisterEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final user =
          await registerUsercase(event.name, event.email, event.password);
      emit(AuthSuccess(message: "Registered Sucessfully"));
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }

  Future<void> _onLogin(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final user = await loginUsecase(event.email, event.password);
      emit(AuthSuccess(message: "Registered Sucessfully"));
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }
}

