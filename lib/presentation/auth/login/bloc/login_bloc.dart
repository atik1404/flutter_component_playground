import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/formvalidator/email_validator.dart';
import 'package:flutter_component_playground/common/formvalidator/password_validator.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_pref_key.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_prefs.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/login_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/profile_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/params/login_params.dart';
import 'package:flutter_component_playground/domain/usecase/auth/fetch_profile_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_login_api_usecase.dart';
import 'package:flutter_component_playground/presentation/auth/login/bloc/login_event.dart';
import 'package:flutter_component_playground/presentation/auth/login/bloc/login_state.dart';
import 'package:formz/formz.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final PostLoginApiUsecase _postLoginApiUsecase;
  final FetchProfileApiUsecase _fetchProfileApiUsecase;
  final SharedPrefs _sharedPrefs;

  LoginBloc({
    required PostLoginApiUsecase postLoginUseCase,
    required SharedPrefs sharedPrefs, 
    required FetchProfileApiUsecase fetchProfileApiUsecase,
  })  : _postLoginApiUsecase = postLoginUseCase,
        _sharedPrefs = sharedPrefs,
        _fetchProfileApiUsecase = fetchProfileApiUsecase,
        super(const LoginState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onLoginSubmitted);
    on<FetchProfile>(_fetchProfile);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(
      email: EmailValidator.dirty(event.email),
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
    if (state.email.isNotValid || state.password.isNotValid) {
      emit(state.copyWith(
        isErrorVisible: true,
        formValidationStatus: FormzSubmissionStatus.failure,
        errorMessage: '',
      ));

      return;
    }
    emit(
      state.copyWith(
        formValidationStatus: FormzSubmissionStatus.inProgress,
        errorMessage: '',
      ),
    );

    try {
      final result = await _postLoginApiUsecase.invoke(
        LoginParams(
          email: state.email.value,
          password: state.password.value,
        ),
      );

      switch (result) {
        case SuccessResult<LoginApiEntity>():
          _sharedPrefs.set(
            key: SharedPrefKey.accessToken,
            value: result.data.accessToken,
          );
          _sharedPrefs.set(
            key: SharedPrefKey.refreshToken,
            value: result.data.refreshToken,
          );
          _sharedPrefs.set(
            key: SharedPrefKey.userLoggedInStatus,
            value: result.data.refreshToken.isNotEmpty,
          );
          add(const FetchProfile());
        case FailureResult<LoginApiEntity>():
          return emit(state.copyWith(
            isErrorVisible: true,
            formValidationStatus: FormzSubmissionStatus.failure,
            errorMessage: result.exception.description,
          ));
      }
    } catch (error) {
      emit(state.copyWith(
        isErrorVisible: true,
        formValidationStatus: FormzSubmissionStatus.failure,
        errorMessage: 'Login failed. Please try again.',
      ));
    }
  }

  void _fetchProfile(
    FetchProfile event,
    Emitter<LoginState> emit,
  ) async {
    try {
      final result = await _fetchProfileApiUsecase.invoke();

      switch (result) {
        case SuccessResult<ProfileApiEntity>():
          return emit(state.copyWith(
            formValidationStatus: FormzSubmissionStatus.success,
          ));
        case FailureResult<ProfileApiEntity>():
          return emit(
            state.copyWith(
              errorMessage: result.exception.description,
              showErrorUi: true,
            ),
          );
      }
    } catch (error) {
      emit(
        state.copyWith(
          errorMessage: error.toString(),
          showErrorUi: true,
        ),
      );
    }
  }
}
