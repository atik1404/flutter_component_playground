// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordEvent()';
}


}

/// @nodoc
class $ForgotPasswordEventCopyWith<$Res>  {
$ForgotPasswordEventCopyWith(ForgotPasswordEvent _, $Res Function(ForgotPasswordEvent) __);
}


/// Adds pattern-matching-related methods to [ForgotPasswordEvent].
extension ForgotPasswordEventPatterns on ForgotPasswordEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OnPageChanged value)?  onPageChanged,TResult Function( EmailChanged value)?  emailChanged,TResult Function( NewPasswordChanged value)?  newPasswordChanged,TResult Function( ConfirmPasswordChanged value)?  confirmPasswordChanged,TResult Function( OtpChanged value)?  otpChanged,TResult Function( SendOtp value)?  sentOtp,TResult Function( ResendOtp value)?  resentOtp,TResult Function( VerifyOtp value)?  verifyOtp,TResult Function( ResetPassword value)?  resetPassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OnPageChanged() when onPageChanged != null:
return onPageChanged(_that);case EmailChanged() when emailChanged != null:
return emailChanged(_that);case NewPasswordChanged() when newPasswordChanged != null:
return newPasswordChanged(_that);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that);case OtpChanged() when otpChanged != null:
return otpChanged(_that);case SendOtp() when sentOtp != null:
return sentOtp(_that);case ResendOtp() when resentOtp != null:
return resentOtp(_that);case VerifyOtp() when verifyOtp != null:
return verifyOtp(_that);case ResetPassword() when resetPassword != null:
return resetPassword(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OnPageChanged value)  onPageChanged,required TResult Function( EmailChanged value)  emailChanged,required TResult Function( NewPasswordChanged value)  newPasswordChanged,required TResult Function( ConfirmPasswordChanged value)  confirmPasswordChanged,required TResult Function( OtpChanged value)  otpChanged,required TResult Function( SendOtp value)  sentOtp,required TResult Function( ResendOtp value)  resentOtp,required TResult Function( VerifyOtp value)  verifyOtp,required TResult Function( ResetPassword value)  resetPassword,}){
final _that = this;
switch (_that) {
case OnPageChanged():
return onPageChanged(_that);case EmailChanged():
return emailChanged(_that);case NewPasswordChanged():
return newPasswordChanged(_that);case ConfirmPasswordChanged():
return confirmPasswordChanged(_that);case OtpChanged():
return otpChanged(_that);case SendOtp():
return sentOtp(_that);case ResendOtp():
return resentOtp(_that);case VerifyOtp():
return verifyOtp(_that);case ResetPassword():
return resetPassword(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OnPageChanged value)?  onPageChanged,TResult? Function( EmailChanged value)?  emailChanged,TResult? Function( NewPasswordChanged value)?  newPasswordChanged,TResult? Function( ConfirmPasswordChanged value)?  confirmPasswordChanged,TResult? Function( OtpChanged value)?  otpChanged,TResult? Function( SendOtp value)?  sentOtp,TResult? Function( ResendOtp value)?  resentOtp,TResult? Function( VerifyOtp value)?  verifyOtp,TResult? Function( ResetPassword value)?  resetPassword,}){
final _that = this;
switch (_that) {
case OnPageChanged() when onPageChanged != null:
return onPageChanged(_that);case EmailChanged() when emailChanged != null:
return emailChanged(_that);case NewPasswordChanged() when newPasswordChanged != null:
return newPasswordChanged(_that);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that);case OtpChanged() when otpChanged != null:
return otpChanged(_that);case SendOtp() when sentOtp != null:
return sentOtp(_that);case ResendOtp() when resentOtp != null:
return resentOtp(_that);case VerifyOtp() when verifyOtp != null:
return verifyOtp(_that);case ResetPassword() when resetPassword != null:
return resetPassword(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int index)?  onPageChanged,TResult Function( String email)?  emailChanged,TResult Function( String password)?  newPasswordChanged,TResult Function( String confirmPassword)?  confirmPasswordChanged,TResult Function( String otp)?  otpChanged,TResult Function()?  sentOtp,TResult Function()?  resentOtp,TResult Function()?  verifyOtp,TResult Function()?  resetPassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OnPageChanged() when onPageChanged != null:
return onPageChanged(_that.index);case EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case NewPasswordChanged() when newPasswordChanged != null:
return newPasswordChanged(_that.password);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that.confirmPassword);case OtpChanged() when otpChanged != null:
return otpChanged(_that.otp);case SendOtp() when sentOtp != null:
return sentOtp();case ResendOtp() when resentOtp != null:
return resentOtp();case VerifyOtp() when verifyOtp != null:
return verifyOtp();case ResetPassword() when resetPassword != null:
return resetPassword();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int index)  onPageChanged,required TResult Function( String email)  emailChanged,required TResult Function( String password)  newPasswordChanged,required TResult Function( String confirmPassword)  confirmPasswordChanged,required TResult Function( String otp)  otpChanged,required TResult Function()  sentOtp,required TResult Function()  resentOtp,required TResult Function()  verifyOtp,required TResult Function()  resetPassword,}) {final _that = this;
switch (_that) {
case OnPageChanged():
return onPageChanged(_that.index);case EmailChanged():
return emailChanged(_that.email);case NewPasswordChanged():
return newPasswordChanged(_that.password);case ConfirmPasswordChanged():
return confirmPasswordChanged(_that.confirmPassword);case OtpChanged():
return otpChanged(_that.otp);case SendOtp():
return sentOtp();case ResendOtp():
return resentOtp();case VerifyOtp():
return verifyOtp();case ResetPassword():
return resetPassword();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int index)?  onPageChanged,TResult? Function( String email)?  emailChanged,TResult? Function( String password)?  newPasswordChanged,TResult? Function( String confirmPassword)?  confirmPasswordChanged,TResult? Function( String otp)?  otpChanged,TResult? Function()?  sentOtp,TResult? Function()?  resentOtp,TResult? Function()?  verifyOtp,TResult? Function()?  resetPassword,}) {final _that = this;
switch (_that) {
case OnPageChanged() when onPageChanged != null:
return onPageChanged(_that.index);case EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case NewPasswordChanged() when newPasswordChanged != null:
return newPasswordChanged(_that.password);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that.confirmPassword);case OtpChanged() when otpChanged != null:
return otpChanged(_that.otp);case SendOtp() when sentOtp != null:
return sentOtp();case ResendOtp() when resentOtp != null:
return resentOtp();case VerifyOtp() when verifyOtp != null:
return verifyOtp();case ResetPassword() when resetPassword != null:
return resetPassword();case _:
  return null;

}
}

}

/// @nodoc


class OnPageChanged implements ForgotPasswordEvent {
  const OnPageChanged(this.index);
  

 final  int index;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnPageChangedCopyWith<OnPageChanged> get copyWith => _$OnPageChangedCopyWithImpl<OnPageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnPageChanged&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'ForgotPasswordEvent.onPageChanged(index: $index)';
}


}

/// @nodoc
abstract mixin class $OnPageChangedCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory $OnPageChangedCopyWith(OnPageChanged value, $Res Function(OnPageChanged) _then) = _$OnPageChangedCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$OnPageChangedCopyWithImpl<$Res>
    implements $OnPageChangedCopyWith<$Res> {
  _$OnPageChangedCopyWithImpl(this._self, this._then);

  final OnPageChanged _self;
  final $Res Function(OnPageChanged) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(OnPageChanged(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class EmailChanged implements ForgotPasswordEvent {
  const EmailChanged(this.email);
  

 final  String email;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailChangedCopyWith<EmailChanged> get copyWith => _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ForgotPasswordEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class $EmailChangedCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory $EmailChangedCopyWith(EmailChanged value, $Res Function(EmailChanged) _then) = _$EmailChangedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(this._self, this._then);

  final EmailChanged _self;
  final $Res Function(EmailChanged) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(EmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NewPasswordChanged implements ForgotPasswordEvent {
  const NewPasswordChanged(this.password);
  

 final  String password;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewPasswordChangedCopyWith<NewPasswordChanged> get copyWith => _$NewPasswordChangedCopyWithImpl<NewPasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewPasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'ForgotPasswordEvent.newPasswordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class $NewPasswordChangedCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory $NewPasswordChangedCopyWith(NewPasswordChanged value, $Res Function(NewPasswordChanged) _then) = _$NewPasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$NewPasswordChangedCopyWithImpl<$Res>
    implements $NewPasswordChangedCopyWith<$Res> {
  _$NewPasswordChangedCopyWithImpl(this._self, this._then);

  final NewPasswordChanged _self;
  final $Res Function(NewPasswordChanged) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(NewPasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ConfirmPasswordChanged implements ForgotPasswordEvent {
  const ConfirmPasswordChanged(this.confirmPassword);
  

 final  String confirmPassword;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith => _$ConfirmPasswordChangedCopyWithImpl<ConfirmPasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmPasswordChanged&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}


@override
int get hashCode => Object.hash(runtimeType,confirmPassword);

@override
String toString() {
  return 'ForgotPasswordEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class $ConfirmPasswordChangedCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory $ConfirmPasswordChangedCopyWith(ConfirmPasswordChanged value, $Res Function(ConfirmPasswordChanged) _then) = _$ConfirmPasswordChangedCopyWithImpl;
@useResult
$Res call({
 String confirmPassword
});




}
/// @nodoc
class _$ConfirmPasswordChangedCopyWithImpl<$Res>
    implements $ConfirmPasswordChangedCopyWith<$Res> {
  _$ConfirmPasswordChangedCopyWithImpl(this._self, this._then);

  final ConfirmPasswordChanged _self;
  final $Res Function(ConfirmPasswordChanged) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? confirmPassword = null,}) {
  return _then(ConfirmPasswordChanged(
null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OtpChanged implements ForgotPasswordEvent {
  const OtpChanged(this.otp);
  

 final  String otp;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpChangedCopyWith<OtpChanged> get copyWith => _$OtpChangedCopyWithImpl<OtpChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpChanged&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,otp);

@override
String toString() {
  return 'ForgotPasswordEvent.otpChanged(otp: $otp)';
}


}

/// @nodoc
abstract mixin class $OtpChangedCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory $OtpChangedCopyWith(OtpChanged value, $Res Function(OtpChanged) _then) = _$OtpChangedCopyWithImpl;
@useResult
$Res call({
 String otp
});




}
/// @nodoc
class _$OtpChangedCopyWithImpl<$Res>
    implements $OtpChangedCopyWith<$Res> {
  _$OtpChangedCopyWithImpl(this._self, this._then);

  final OtpChanged _self;
  final $Res Function(OtpChanged) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otp = null,}) {
  return _then(OtpChanged(
null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SendOtp implements ForgotPasswordEvent {
  const SendOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordEvent.sentOtp()';
}


}




/// @nodoc


class ResendOtp implements ForgotPasswordEvent {
  const ResendOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordEvent.resentOtp()';
}


}




/// @nodoc


class VerifyOtp implements ForgotPasswordEvent {
  const VerifyOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordEvent.verifyOtp()';
}


}




/// @nodoc


class ResetPassword implements ForgotPasswordEvent {
  const ResetPassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordEvent.resetPassword()';
}


}




// dart format on
