// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationState implements DiagnosticableTreeMixin {
  NameValidator get name;
  PasswordValidator get password;
  PasswordValidator get confirmPassword;
  PhoneNumberValidator get phoneNumber;
  FormzSubmissionStatus get formValidationStatus;
  bool get isErrorVisible;
  bool get isPrivacyPolicyAccepted;
  String get registrationErrorMessage;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      _$RegistrationStateCopyWithImpl<RegistrationState>(
          this as RegistrationState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RegistrationState'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('confirmPassword', confirmPassword))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('formValidationStatus', formValidationStatus))
      ..add(DiagnosticsProperty('isErrorVisible', isErrorVisible))
      ..add(DiagnosticsProperty(
          'isPrivacyPolicyAccepted', isPrivacyPolicyAccepted))
      ..add(DiagnosticsProperty(
          'registrationErrorMessage', registrationErrorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.formValidationStatus, formValidationStatus) ||
                other.formValidationStatus == formValidationStatus) &&
            (identical(other.isErrorVisible, isErrorVisible) ||
                other.isErrorVisible == isErrorVisible) &&
            (identical(
                    other.isPrivacyPolicyAccepted, isPrivacyPolicyAccepted) ||
                other.isPrivacyPolicyAccepted == isPrivacyPolicyAccepted) &&
            (identical(
                    other.registrationErrorMessage, registrationErrorMessage) ||
                other.registrationErrorMessage == registrationErrorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      password,
      confirmPassword,
      phoneNumber,
      formValidationStatus,
      isErrorVisible,
      isPrivacyPolicyAccepted,
      registrationErrorMessage);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegistrationState(name: $name, password: $password, confirmPassword: $confirmPassword, phoneNumber: $phoneNumber, formValidationStatus: $formValidationStatus, isErrorVisible: $isErrorVisible, isPrivacyPolicyAccepted: $isPrivacyPolicyAccepted, registrationErrorMessage: $registrationErrorMessage)';
  }
}

/// @nodoc
abstract mixin class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) _then) =
      _$RegistrationStateCopyWithImpl;
  @useResult
  $Res call(
      {NameValidator name,
      PasswordValidator password,
      PasswordValidator confirmPassword,
      PhoneNumberValidator phoneNumber,
      FormzSubmissionStatus formValidationStatus,
      bool isErrorVisible,
      bool isPrivacyPolicyAccepted,
      String registrationErrorMessage});
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._self, this._then);

  final RegistrationState _self;
  final $Res Function(RegistrationState) _then;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? phoneNumber = null,
    Object? formValidationStatus = null,
    Object? isErrorVisible = null,
    Object? isPrivacyPolicyAccepted = null,
    Object? registrationErrorMessage = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameValidator,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberValidator,
      formValidationStatus: null == formValidationStatus
          ? _self.formValidationStatus
          : formValidationStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isErrorVisible: null == isErrorVisible
          ? _self.isErrorVisible
          : isErrorVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrivacyPolicyAccepted: null == isPrivacyPolicyAccepted
          ? _self.isPrivacyPolicyAccepted
          : isPrivacyPolicyAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      registrationErrorMessage: null == registrationErrorMessage
          ? _self.registrationErrorMessage
          : registrationErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _RegistrationState
    with DiagnosticableTreeMixin
    implements RegistrationState {
  const _RegistrationState(
      {this.name = const NameValidator.pure(),
      this.password = const PasswordValidator.pure(),
      this.confirmPassword = const PasswordValidator.pure(),
      this.phoneNumber = const PhoneNumberValidator.pure(),
      this.formValidationStatus = FormzSubmissionStatus.initial,
      this.isErrorVisible = false,
      this.isPrivacyPolicyAccepted = false,
      this.registrationErrorMessage = ''});

  @override
  @JsonKey()
  final NameValidator name;
  @override
  @JsonKey()
  final PasswordValidator password;
  @override
  @JsonKey()
  final PasswordValidator confirmPassword;
  @override
  @JsonKey()
  final PhoneNumberValidator phoneNumber;
  @override
  @JsonKey()
  final FormzSubmissionStatus formValidationStatus;
  @override
  @JsonKey()
  final bool isErrorVisible;
  @override
  @JsonKey()
  final bool isPrivacyPolicyAccepted;
  @override
  @JsonKey()
  final String registrationErrorMessage;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegistrationStateCopyWith<_RegistrationState> get copyWith =>
      __$RegistrationStateCopyWithImpl<_RegistrationState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RegistrationState'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('confirmPassword', confirmPassword))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('formValidationStatus', formValidationStatus))
      ..add(DiagnosticsProperty('isErrorVisible', isErrorVisible))
      ..add(DiagnosticsProperty(
          'isPrivacyPolicyAccepted', isPrivacyPolicyAccepted))
      ..add(DiagnosticsProperty(
          'registrationErrorMessage', registrationErrorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegistrationState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.formValidationStatus, formValidationStatus) ||
                other.formValidationStatus == formValidationStatus) &&
            (identical(other.isErrorVisible, isErrorVisible) ||
                other.isErrorVisible == isErrorVisible) &&
            (identical(
                    other.isPrivacyPolicyAccepted, isPrivacyPolicyAccepted) ||
                other.isPrivacyPolicyAccepted == isPrivacyPolicyAccepted) &&
            (identical(
                    other.registrationErrorMessage, registrationErrorMessage) ||
                other.registrationErrorMessage == registrationErrorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      password,
      confirmPassword,
      phoneNumber,
      formValidationStatus,
      isErrorVisible,
      isPrivacyPolicyAccepted,
      registrationErrorMessage);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegistrationState(name: $name, password: $password, confirmPassword: $confirmPassword, phoneNumber: $phoneNumber, formValidationStatus: $formValidationStatus, isErrorVisible: $isErrorVisible, isPrivacyPolicyAccepted: $isPrivacyPolicyAccepted, registrationErrorMessage: $registrationErrorMessage)';
  }
}

/// @nodoc
abstract mixin class _$RegistrationStateCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$RegistrationStateCopyWith(
          _RegistrationState value, $Res Function(_RegistrationState) _then) =
      __$RegistrationStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {NameValidator name,
      PasswordValidator password,
      PasswordValidator confirmPassword,
      PhoneNumberValidator phoneNumber,
      FormzSubmissionStatus formValidationStatus,
      bool isErrorVisible,
      bool isPrivacyPolicyAccepted,
      String registrationErrorMessage});
}

/// @nodoc
class __$RegistrationStateCopyWithImpl<$Res>
    implements _$RegistrationStateCopyWith<$Res> {
  __$RegistrationStateCopyWithImpl(this._self, this._then);

  final _RegistrationState _self;
  final $Res Function(_RegistrationState) _then;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? phoneNumber = null,
    Object? formValidationStatus = null,
    Object? isErrorVisible = null,
    Object? isPrivacyPolicyAccepted = null,
    Object? registrationErrorMessage = null,
  }) {
    return _then(_RegistrationState(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameValidator,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberValidator,
      formValidationStatus: null == formValidationStatus
          ? _self.formValidationStatus
          : formValidationStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isErrorVisible: null == isErrorVisible
          ? _self.isErrorVisible
          : isErrorVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrivacyPolicyAccepted: null == isPrivacyPolicyAccepted
          ? _self.isPrivacyPolicyAccepted
          : isPrivacyPolicyAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      registrationErrorMessage: null == registrationErrorMessage
          ? _self.registrationErrorMessage
          : registrationErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
