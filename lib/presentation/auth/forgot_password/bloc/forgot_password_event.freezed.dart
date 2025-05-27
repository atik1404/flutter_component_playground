// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotPasswordEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ForgotPasswordEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForgotPasswordEvent()';
  }
}

/// @nodoc
class $ForgotPasswordEventCopyWith<$Res> {
  $ForgotPasswordEventCopyWith(
      ForgotPasswordEvent _, $Res Function(ForgotPasswordEvent) __);
}

/// @nodoc

class OnPageChanged implements ForgotPasswordEvent {
  const OnPageChanged(this.index);

  final int index;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnPageChangedCopyWith<OnPageChanged> get copyWith =>
      _$OnPageChangedCopyWithImpl<OnPageChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnPageChanged &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'ForgotPasswordEvent.onPageChanged(index: $index)';
  }
}

/// @nodoc
abstract mixin class $OnPageChangedCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory $OnPageChangedCopyWith(
          OnPageChanged value, $Res Function(OnPageChanged) _then) =
      _$OnPageChangedCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$OnPageChangedCopyWithImpl<$Res>
    implements $OnPageChangedCopyWith<$Res> {
  _$OnPageChangedCopyWithImpl(this._self, this._then);

  final OnPageChanged _self;
  final $Res Function(OnPageChanged) _then;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(OnPageChanged(
      null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class EmailChanged implements ForgotPasswordEvent {
  const EmailChanged(this.email);

  final String email;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'ForgotPasswordEvent.emailChanged(email: $email)';
  }
}

/// @nodoc
abstract mixin class $EmailChangedCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) _then) =
      _$EmailChangedCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(this._self, this._then);

  final EmailChanged _self;
  final $Res Function(EmailChanged) _then;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(EmailChanged(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class NewPasswordChanged implements ForgotPasswordEvent {
  const NewPasswordChanged(this.password);

  final String password;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewPasswordChangedCopyWith<NewPasswordChanged> get copyWith =>
      _$NewPasswordChangedCopyWithImpl<NewPasswordChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'ForgotPasswordEvent.newPasswordChanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class $NewPasswordChangedCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory $NewPasswordChangedCopyWith(
          NewPasswordChanged value, $Res Function(NewPasswordChanged) _then) =
      _$NewPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$NewPasswordChangedCopyWithImpl<$Res>
    implements $NewPasswordChangedCopyWith<$Res> {
  _$NewPasswordChangedCopyWithImpl(this._self, this._then);

  final NewPasswordChanged _self;
  final $Res Function(NewPasswordChanged) _then;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(NewPasswordChanged(
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ConfirmPasswordChanged implements ForgotPasswordEvent {
  const ConfirmPasswordChanged(this.password);

  final String password;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith =>
      _$ConfirmPasswordChangedCopyWithImpl<ConfirmPasswordChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConfirmPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'ForgotPasswordEvent.confirmPasswordChanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class $ConfirmPasswordChangedCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory $ConfirmPasswordChangedCopyWith(ConfirmPasswordChanged value,
          $Res Function(ConfirmPasswordChanged) _then) =
      _$ConfirmPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$ConfirmPasswordChangedCopyWithImpl<$Res>
    implements $ConfirmPasswordChangedCopyWith<$Res> {
  _$ConfirmPasswordChangedCopyWithImpl(this._self, this._then);

  final ConfirmPasswordChanged _self;
  final $Res Function(ConfirmPasswordChanged) _then;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(ConfirmPasswordChanged(
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class OtpChanged implements ForgotPasswordEvent {
  const OtpChanged(this.otp);

  final String otp;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OtpChangedCopyWith<OtpChanged> get copyWith =>
      _$OtpChangedCopyWithImpl<OtpChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OtpChanged &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @override
  String toString() {
    return 'ForgotPasswordEvent.otpChanged(otp: $otp)';
  }
}

/// @nodoc
abstract mixin class $OtpChangedCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory $OtpChangedCopyWith(
          OtpChanged value, $Res Function(OtpChanged) _then) =
      _$OtpChangedCopyWithImpl;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class _$OtpChangedCopyWithImpl<$Res> implements $OtpChangedCopyWith<$Res> {
  _$OtpChangedCopyWithImpl(this._self, this._then);

  final OtpChanged _self;
  final $Res Function(OtpChanged) _then;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? otp = null,
  }) {
    return _then(OtpChanged(
      null == otp
          ? _self.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SendOtp implements ForgotPasswordEvent {
  const SendOtp(this.phone);

  final String phone;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SendOtpCopyWith<SendOtp> get copyWith =>
      _$SendOtpCopyWithImpl<SendOtp>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendOtp &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @override
  String toString() {
    return 'ForgotPasswordEvent.sentOtp(phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $SendOtpCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory $SendOtpCopyWith(SendOtp value, $Res Function(SendOtp) _then) =
      _$SendOtpCopyWithImpl;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class _$SendOtpCopyWithImpl<$Res> implements $SendOtpCopyWith<$Res> {
  _$SendOtpCopyWithImpl(this._self, this._then);

  final SendOtp _self;
  final $Res Function(SendOtp) _then;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phone = null,
  }) {
    return _then(SendOtp(
      null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class VerifyOtp implements ForgotPasswordEvent {
  const VerifyOtp(this.phone, this.otp);

  final String phone;
  final String otp;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyOtpCopyWith<VerifyOtp> get copyWith =>
      _$VerifyOtpCopyWithImpl<VerifyOtp>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyOtp &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, otp);

  @override
  String toString() {
    return 'ForgotPasswordEvent.verifyOtp(phone: $phone, otp: $otp)';
  }
}

/// @nodoc
abstract mixin class $VerifyOtpCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory $VerifyOtpCopyWith(VerifyOtp value, $Res Function(VerifyOtp) _then) =
      _$VerifyOtpCopyWithImpl;
  @useResult
  $Res call({String phone, String otp});
}

/// @nodoc
class _$VerifyOtpCopyWithImpl<$Res> implements $VerifyOtpCopyWith<$Res> {
  _$VerifyOtpCopyWithImpl(this._self, this._then);

  final VerifyOtp _self;
  final $Res Function(VerifyOtp) _then;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phone = null,
    Object? otp = null,
  }) {
    return _then(VerifyOtp(
      null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == otp
          ? _self.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ResetPassword implements ForgotPasswordEvent {
  const ResetPassword(this.phone, this.token, this.password);

  final String phone;
  final String token;
  final String password;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResetPasswordCopyWith<ResetPassword> get copyWith =>
      _$ResetPasswordCopyWithImpl<ResetPassword>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPassword &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, token, password);

  @override
  String toString() {
    return 'ForgotPasswordEvent.resetPassword(phone: $phone, token: $token, password: $password)';
  }
}

/// @nodoc
abstract mixin class $ResetPasswordCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory $ResetPasswordCopyWith(
          ResetPassword value, $Res Function(ResetPassword) _then) =
      _$ResetPasswordCopyWithImpl;
  @useResult
  $Res call({String phone, String token, String password});
}

/// @nodoc
class _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordCopyWith<$Res> {
  _$ResetPasswordCopyWithImpl(this._self, this._then);

  final ResetPassword _self;
  final $Res Function(ResetPassword) _then;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phone = null,
    Object? token = null,
    Object? password = null,
  }) {
    return _then(ResetPassword(
      null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
