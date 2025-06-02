// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginState {
  EmailValidator get email;
  PasswordValidator get password;
  FormzSubmissionStatus get formValidationStatus;
  bool get isErrorVisible;
  bool get showErrorUi;
  String get errorMessage;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateCopyWith<LoginState> get copyWith =>
      _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.formValidationStatus, formValidationStatus) ||
                other.formValidationStatus == formValidationStatus) &&
            (identical(other.isErrorVisible, isErrorVisible) ||
                other.isErrorVisible == isErrorVisible) &&
            (identical(other.showErrorUi, showErrorUi) ||
                other.showErrorUi == showErrorUi) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password,
      formValidationStatus, isErrorVisible, showErrorUi, errorMessage);

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, formValidationStatus: $formValidationStatus, isErrorVisible: $isErrorVisible, showErrorUi: $showErrorUi, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) _then) =
      _$LoginStateCopyWithImpl;
  @useResult
  $Res call(
      {EmailValidator email,
      PasswordValidator password,
      FormzSubmissionStatus formValidationStatus,
      bool isErrorVisible,
      bool showErrorUi,
      String errorMessage});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? formValidationStatus = null,
    Object? isErrorVisible = null,
    Object? showErrorUi = null,
    Object? errorMessage = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValidator,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      formValidationStatus: null == formValidationStatus
          ? _self.formValidationStatus
          : formValidationStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isErrorVisible: null == isErrorVisible
          ? _self.isErrorVisible
          : isErrorVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorUi: null == showErrorUi
          ? _self.showErrorUi
          : showErrorUi // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LoginState implements LoginState {
  const _LoginState(
      {this.email = const EmailValidator.pure(),
      this.password = const PasswordValidator.pure(),
      this.formValidationStatus = FormzSubmissionStatus.initial,
      this.isErrorVisible = false,
      this.showErrorUi = false,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final EmailValidator email;
  @override
  @JsonKey()
  final PasswordValidator password;
  @override
  @JsonKey()
  final FormzSubmissionStatus formValidationStatus;
  @override
  @JsonKey()
  final bool isErrorVisible;
  @override
  @JsonKey()
  final bool showErrorUi;
  @override
  @JsonKey()
  final String errorMessage;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.formValidationStatus, formValidationStatus) ||
                other.formValidationStatus == formValidationStatus) &&
            (identical(other.isErrorVisible, isErrorVisible) ||
                other.isErrorVisible == isErrorVisible) &&
            (identical(other.showErrorUi, showErrorUi) ||
                other.showErrorUi == showErrorUi) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password,
      formValidationStatus, isErrorVisible, showErrorUi, errorMessage);

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, formValidationStatus: $formValidationStatus, isErrorVisible: $isErrorVisible, showErrorUi: $showErrorUi, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) _then) =
      __$LoginStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {EmailValidator email,
      PasswordValidator password,
      FormzSubmissionStatus formValidationStatus,
      bool isErrorVisible,
      bool showErrorUi,
      String errorMessage});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? formValidationStatus = null,
    Object? isErrorVisible = null,
    Object? showErrorUi = null,
    Object? errorMessage = null,
  }) {
    return _then(_LoginState(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValidator,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      formValidationStatus: null == formValidationStatus
          ? _self.formValidationStatus
          : formValidationStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isErrorVisible: null == isErrorVisible
          ? _self.isErrorVisible
          : isErrorVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorUi: null == showErrorUi
          ? _self.showErrorUi
          : showErrorUi // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
