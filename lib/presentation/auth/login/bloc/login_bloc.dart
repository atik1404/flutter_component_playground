import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/formvalidator/email_validator.dart';
import 'package:flutter_component_playground/common/formvalidator/password_validator.dart';
import 'package:flutter_component_playground/presentation/auth/login/bloc/login_event.dart';
import 'package:flutter_component_playground/presentation/auth/login/bloc/login_state.dart';
import 'package:formz/formz.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onLoginSubmitted);
    //on<NavigateToHomeScreen>(_onNavigateToHomeScreen);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    final email = EmailValidator.dirty(event.email);
    emit(state.copyWith(
      email: email,
      isErrorVisible: false,
      formValidationStatus: FormzSubmissionStatus.initial,
      errorMessage: '',
    ));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    final password = PasswordValidator.dirty(event.password);
    emit(state.copyWith(
      password: password,
      isErrorVisible: false,
      formValidationStatus: FormzSubmissionStatus.initial,
      errorMessage: '',
    ));
  }

  Future<void> _onLoginSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.email.isNotValid || state.password.isNotValid) {
      emit(state.copyWith(
        isErrorVisible: true,
        formValidationStatus: FormzSubmissionStatus.failure,
        errorMessage: 'Please fix the errors in the form.',
      ));

      return;
    }
    emit(state.copyWith(formValidationStatus: FormzSubmissionStatus.inProgress));

    try {
      await Future.delayed(const Duration(seconds: 2));
      emit(state.copyWith(formValidationStatus: FormzSubmissionStatus.success));
    } catch (error) {
      emit(state.copyWith(
        isErrorVisible: true,
        formValidationStatus: FormzSubmissionStatus.failure,
        errorMessage: 'Login failed. Please try again.',
      ));
    }
  }

  void _onNavigateToHomeScreen(
    NavigateToHomeScreen event,
    Emitter<LoginState> emit,
  ) {
    // Handle navigation to the home screen if needed
    // This is typically handled in the UI layer using BlocListener
  }
}
