// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotPasswordState {

 int get currentPageIndex; EmailValidator get email; OtpValidator get otp; String get remainTime; bool get isTimerRunning; PasswordValidator get newPassword; PasswordValidator get confirmPassword; bool get isConfirmPasswordError; ForgotPasswordStatus get status; ForgotPasswordPage get currentPage;
/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith => _$ForgotPasswordStateCopyWithImpl<ForgotPasswordState>(this as ForgotPasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordState&&(identical(other.currentPageIndex, currentPageIndex) || other.currentPageIndex == currentPageIndex)&&(identical(other.email, email) || other.email == email)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.remainTime, remainTime) || other.remainTime == remainTime)&&(identical(other.isTimerRunning, isTimerRunning) || other.isTimerRunning == isTimerRunning)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.isConfirmPasswordError, isConfirmPasswordError) || other.isConfirmPasswordError == isConfirmPasswordError)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}


@override
int get hashCode => Object.hash(runtimeType,currentPageIndex,email,otp,remainTime,isTimerRunning,newPassword,confirmPassword,isConfirmPasswordError,status,currentPage);

@override
String toString() {
  return 'ForgotPasswordState(currentPageIndex: $currentPageIndex, email: $email, otp: $otp, remainTime: $remainTime, isTimerRunning: $isTimerRunning, newPassword: $newPassword, confirmPassword: $confirmPassword, isConfirmPasswordError: $isConfirmPasswordError, status: $status, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordStateCopyWith<$Res>  {
  factory $ForgotPasswordStateCopyWith(ForgotPasswordState value, $Res Function(ForgotPasswordState) _then) = _$ForgotPasswordStateCopyWithImpl;
@useResult
$Res call({
 int currentPageIndex, EmailValidator email, OtpValidator otp, String remainTime, bool isTimerRunning, PasswordValidator newPassword, PasswordValidator confirmPassword, bool isConfirmPasswordError, ForgotPasswordStatus status, ForgotPasswordPage currentPage
});




}
/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final ForgotPasswordState _self;
  final $Res Function(ForgotPasswordState) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPageIndex = null,Object? email = null,Object? otp = null,Object? remainTime = null,Object? isTimerRunning = null,Object? newPassword = null,Object? confirmPassword = null,Object? isConfirmPasswordError = null,Object? status = null,Object? currentPage = null,}) {
  return _then(_self.copyWith(
currentPageIndex: null == currentPageIndex ? _self.currentPageIndex : currentPageIndex // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailValidator,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as OtpValidator,remainTime: null == remainTime ? _self.remainTime : remainTime // ignore: cast_nullable_to_non_nullable
as String,isTimerRunning: null == isTimerRunning ? _self.isTimerRunning : isTimerRunning // ignore: cast_nullable_to_non_nullable
as bool,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as PasswordValidator,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as PasswordValidator,isConfirmPasswordError: null == isConfirmPasswordError ? _self.isConfirmPasswordError : isConfirmPasswordError // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ForgotPasswordStatus,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as ForgotPasswordPage,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgotPasswordState].
extension ForgotPasswordStatePatterns on ForgotPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotPasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotPasswordState value)  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotPasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentPageIndex,  EmailValidator email,  OtpValidator otp,  String remainTime,  bool isTimerRunning,  PasswordValidator newPassword,  PasswordValidator confirmPassword,  bool isConfirmPasswordError,  ForgotPasswordStatus status,  ForgotPasswordPage currentPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
return $default(_that.currentPageIndex,_that.email,_that.otp,_that.remainTime,_that.isTimerRunning,_that.newPassword,_that.confirmPassword,_that.isConfirmPasswordError,_that.status,_that.currentPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentPageIndex,  EmailValidator email,  OtpValidator otp,  String remainTime,  bool isTimerRunning,  PasswordValidator newPassword,  PasswordValidator confirmPassword,  bool isConfirmPasswordError,  ForgotPasswordStatus status,  ForgotPasswordPage currentPage)  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordState():
return $default(_that.currentPageIndex,_that.email,_that.otp,_that.remainTime,_that.isTimerRunning,_that.newPassword,_that.confirmPassword,_that.isConfirmPasswordError,_that.status,_that.currentPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentPageIndex,  EmailValidator email,  OtpValidator otp,  String remainTime,  bool isTimerRunning,  PasswordValidator newPassword,  PasswordValidator confirmPassword,  bool isConfirmPasswordError,  ForgotPasswordStatus status,  ForgotPasswordPage currentPage)?  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
return $default(_that.currentPageIndex,_that.email,_that.otp,_that.remainTime,_that.isTimerRunning,_that.newPassword,_that.confirmPassword,_that.isConfirmPasswordError,_that.status,_that.currentPage);case _:
  return null;

}
}

}

/// @nodoc


class _ForgotPasswordState implements ForgotPasswordState {
  const _ForgotPasswordState({this.currentPageIndex = 0, this.email = const EmailValidator.pure(), this.otp = const OtpValidator.pure(), this.remainTime = '', this.isTimerRunning = true, this.newPassword = const PasswordValidator.pure(), this.confirmPassword = const PasswordValidator.pure(), this.isConfirmPasswordError = false, this.status = ForgotPasswordStatus.initial, this.currentPage = ForgotPasswordPage.emailForm});
  

@override@JsonKey() final  int currentPageIndex;
@override@JsonKey() final  EmailValidator email;
@override@JsonKey() final  OtpValidator otp;
@override@JsonKey() final  String remainTime;
@override@JsonKey() final  bool isTimerRunning;
@override@JsonKey() final  PasswordValidator newPassword;
@override@JsonKey() final  PasswordValidator confirmPassword;
@override@JsonKey() final  bool isConfirmPasswordError;
@override@JsonKey() final  ForgotPasswordStatus status;
@override@JsonKey() final  ForgotPasswordPage currentPage;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith => __$ForgotPasswordStateCopyWithImpl<_ForgotPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordState&&(identical(other.currentPageIndex, currentPageIndex) || other.currentPageIndex == currentPageIndex)&&(identical(other.email, email) || other.email == email)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.remainTime, remainTime) || other.remainTime == remainTime)&&(identical(other.isTimerRunning, isTimerRunning) || other.isTimerRunning == isTimerRunning)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.isConfirmPasswordError, isConfirmPasswordError) || other.isConfirmPasswordError == isConfirmPasswordError)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}


@override
int get hashCode => Object.hash(runtimeType,currentPageIndex,email,otp,remainTime,isTimerRunning,newPassword,confirmPassword,isConfirmPasswordError,status,currentPage);

@override
String toString() {
  return 'ForgotPasswordState(currentPageIndex: $currentPageIndex, email: $email, otp: $otp, remainTime: $remainTime, isTimerRunning: $isTimerRunning, newPassword: $newPassword, confirmPassword: $confirmPassword, isConfirmPasswordError: $isConfirmPasswordError, status: $status, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordStateCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$ForgotPasswordStateCopyWith(_ForgotPasswordState value, $Res Function(_ForgotPasswordState) _then) = __$ForgotPasswordStateCopyWithImpl;
@override @useResult
$Res call({
 int currentPageIndex, EmailValidator email, OtpValidator otp, String remainTime, bool isTimerRunning, PasswordValidator newPassword, PasswordValidator confirmPassword, bool isConfirmPasswordError, ForgotPasswordStatus status, ForgotPasswordPage currentPage
});




}
/// @nodoc
class __$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$ForgotPasswordStateCopyWith<$Res> {
  __$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final _ForgotPasswordState _self;
  final $Res Function(_ForgotPasswordState) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPageIndex = null,Object? email = null,Object? otp = null,Object? remainTime = null,Object? isTimerRunning = null,Object? newPassword = null,Object? confirmPassword = null,Object? isConfirmPasswordError = null,Object? status = null,Object? currentPage = null,}) {
  return _then(_ForgotPasswordState(
currentPageIndex: null == currentPageIndex ? _self.currentPageIndex : currentPageIndex // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailValidator,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as OtpValidator,remainTime: null == remainTime ? _self.remainTime : remainTime // ignore: cast_nullable_to_non_nullable
as String,isTimerRunning: null == isTimerRunning ? _self.isTimerRunning : isTimerRunning // ignore: cast_nullable_to_non_nullable
as bool,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as PasswordValidator,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as PasswordValidator,isConfirmPasswordError: null == isConfirmPasswordError ? _self.isConfirmPasswordError : isConfirmPasswordError // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ForgotPasswordStatus,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as ForgotPasswordPage,
  ));
}


}

// dart format on
