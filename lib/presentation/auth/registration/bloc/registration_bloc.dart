import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/formvalidator/email_validator.dart';
import 'package:flutter_component_playground/common/formvalidator/name_validator.dart';
import 'package:flutter_component_playground/common/formvalidator/password_validator.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/registration_entity.dart';
import 'package:flutter_component_playground/domain/entities/params/registration_params.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_registration_usecase.dart';
import 'package:flutter_component_playground/presentation/auth/registration/bloc/registration_event.dart';
import 'package:flutter_component_playground/presentation/auth/registration/bloc/registration_state.dart';
import 'package:formz/formz.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final PostRegistrationUsecase _postRegistrationUsecase;

  RegistrationBloc({
    required PostRegistrationUsecase postRegistrationUsecase,
  })  : _postRegistrationUsecase = postRegistrationUsecase,
        // Call the super constructor with the initial state
        super(const RegistrationState()) {
    on<NameChanged>(_onNameChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<EmailChanged>(_onEmailChanged);
    on<PrivacyPolicyAccepted>(_onPrivacyPolicyAccepted);
    on<RegistrationSubmitted>(_onRegistrationSubmitted);
  }

  void _onNameChanged(
    NameChanged event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(
      name: NameValidator.dirty(event.name),
      isErrorVisible: false,
      formValidationStatus: FormzSubmissionStatus.initial,
    ));
  }

  void _onPasswordChanged(
    PasswordChanged event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(
      password: PasswordValidator.dirty(event.password),
      isErrorVisible: false,
      formValidationStatus: FormzSubmissionStatus.initial,
    ));
  }

  void _onConfirmPasswordChanged(
    ConfirmPasswordChanged event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(
      confirmPassword: PasswordValidator.dirty(event.confirmPassword),
      isErrorVisible: false,
      formValidationStatus: FormzSubmissionStatus.initial,
    ));
  }

  void _onEmailChanged(
    EmailChanged event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(
      email: EmailValidator.dirty(event.email),
      isErrorVisible: false,
      formValidationStatus: FormzSubmissionStatus.initial,
    ));
  }

  void _onPrivacyPolicyAccepted(
    PrivacyPolicyAccepted event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(
      isPrivacyPolicyAccepted: event.isAccepted,
      isErrorVisible: false,
      formValidationStatus: FormzSubmissionStatus.initial,
    ));
  }

  void _onRegistrationSubmitted(
    RegistrationSubmitted event,
    Emitter<RegistrationState> emit,
  ) async {
    if (state.name.isNotValid ||
        state.password.isNotValid ||
        state.confirmPassword.isNotValid ||
        state.email.isNotValid) {
      emit(state.copyWith(
        isErrorVisible: true,
        formValidationStatus: FormzSubmissionStatus.failure,
      ));

      return;
    }

    if (state.password != state.confirmPassword) {
      emit(state.copyWith(
        isErrorVisible: true,
        formValidationStatus: FormzSubmissionStatus.failure,
      ));

      return;
    }

    emit(state.copyWith(
      formValidationStatus: FormzSubmissionStatus.inProgress,
      registrationErrorMessage: '',
    ));

    try {
      final result = await _postRegistrationUsecase.invoke(
        RegistrationParams(
          email: state.email.value,
          password: state.password.value,
          name: state.name.value,
        ),
      );

      switch (result) {
        case SuccessResult<RegistrationEntity>():
          return emit(state.copyWith(
            registrationErrorMessage: "Registration successful!",
            formValidationStatus: FormzSubmissionStatus.initial,
          ));
        case FailureResult<RegistrationEntity>():
          return emit(state.copyWith(
            formValidationStatus: FormzSubmissionStatus.failure,
            registrationErrorMessage: result.exception.description,
          ));
      }
    } catch (error) {
      emit(state.copyWith(
            isErrorVisible: true,
            formValidationStatus: FormzSubmissionStatus.failure,
            registrationErrorMessage: error.toString(),
          ));
    }
  }
}
