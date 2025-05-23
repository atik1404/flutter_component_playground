import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/formvalidator/password_validator.dart';
import 'package:flutter_component_playground/common/formvalidator/phone_number_validator.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/login_entity.dart';
import 'package:flutter_component_playground/domain/params/login_params.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_login_api_usecase.dart';
import 'package:flutter_component_playground/presentation/auth/login/bloc/login_event.dart';
import 'package:flutter_component_playground/presentation/auth/login/bloc/login_state.dart';
import 'package:formz/formz.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final PostLoginApiUsecase _postLoginApiUsecase;

  LoginBloc({required PostLoginApiUsecase postLoginUseCase})
      : _postLoginApiUsecase = postLoginUseCase,
        super(const LoginState()) {
    on<PhoneChanged>(_onPhoneChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  void _onPhoneChanged(PhoneChanged event, Emitter<LoginState> emit) {
    final phone = PhoneNumberValidator.dirty(event.phone);
    emit(state.copyWith(
      phone: phone,
      isErrorVisible: false,
      formValidationStatus: FormzSubmissionStatus.initial,
    ));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    final password = PasswordValidator.dirty(event.password);
    emit(state.copyWith(
      password: password,
      isErrorVisible: false,
      formValidationStatus: FormzSubmissionStatus.initial,
    ));
  }

  Future<void> _onLoginSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.phone.isNotValid || state.password.isNotValid) {
      emit(state.copyWith(
        isErrorVisible: true,
        formValidationStatus: FormzSubmissionStatus.failure,
        loginErrorMessage: '',
      ));

      return;
    }
    emit(
      state.copyWith(
        formValidationStatus: FormzSubmissionStatus.inProgress,
        loginErrorMessage: '',
      ),
    );

    try {
      await Future.delayed(const Duration(seconds: 2));
      final result = await _postLoginApiUsecase.invoke(
        LoginParams(
          phone: state.phone.value,
          password: state.password.value,
        ),
      );

      switch (result) {
        case SuccessResult<LoginEntity>():
          return emit(state.copyWith(
            formValidationStatus: FormzSubmissionStatus.success,
          ));
        case FailureResult<LoginEntity>():
          return emit(state.copyWith(
            isErrorVisible: true,
            formValidationStatus: FormzSubmissionStatus.failure,
            loginErrorMessage: result.exception.description,
          ));
      }
    } catch (error) {
      emit(state.copyWith(
        isErrorVisible: true,
        formValidationStatus: FormzSubmissionStatus.failure,
        loginErrorMessage: 'Login failed. Please try again.',
      ));
    }
  }
}
