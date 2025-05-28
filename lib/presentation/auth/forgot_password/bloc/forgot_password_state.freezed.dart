// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  int get currentPageIndex;
  EmailValidator get email;
  String get otp;
  String get remainTime;
  PasswordValidator get newPassword;
  PasswordValidator get confirmPassword;
  ForgotPasswordStatus get status;
  ForgotPasswordPage get currentPage;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      _$ForgotPasswordStateCopyWithImpl<ForgotPasswordState>(
          this as ForgotPasswordState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPasswordState &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.remainTime, remainTime) ||
                other.remainTime == remainTime) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPageIndex, email, otp,
      remainTime, newPassword, confirmPassword, status, currentPage);

  @override
  String toString() {
    return 'ForgotPasswordState(currentPageIndex: $currentPageIndex, email: $email, otp: $otp, remainTime: $remainTime, newPassword: $newPassword, confirmPassword: $confirmPassword, status: $status, currentPage: $currentPage)';
  }
}

/// @nodoc
abstract mixin class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) _then) =
      _$ForgotPasswordStateCopyWithImpl;
  @useResult
  $Res call(
      {int currentPageIndex,
      EmailValidator email,
      String otp,
      String remainTime,
      PasswordValidator newPassword,
      PasswordValidator confirmPassword,
      ForgotPasswordStatus status,
      ForgotPasswordPage currentPage});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final ForgotPasswordState _self;
  final $Res Function(ForgotPasswordState) _then;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPageIndex = null,
    Object? email = null,
    Object? otp = null,
    Object? remainTime = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? status = null,
    Object? currentPage = null,
  }) {
    return _then(_self.copyWith(
      currentPageIndex: null == currentPageIndex
          ? _self.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValidator,
      otp: null == otp
          ? _self.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      remainTime: null == remainTime
          ? _self.remainTime
          : remainTime // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordStatus,
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordPage,
    ));
  }
}

/// @nodoc

class _ForgotPasswordState implements ForgotPasswordState {
  const _ForgotPasswordState(
      {this.currentPageIndex = 0,
      this.email = const EmailValidator.pure(),
      this.otp = '',
      this.remainTime = '',
      this.newPassword = const PasswordValidator.pure(),
      this.confirmPassword = const PasswordValidator.pure(),
      this.status = ForgotPasswordStatus.initial,
      this.currentPage = ForgotPasswordPage.emailForm});

  @override
  @JsonKey()
  final int currentPageIndex;
  @override
  @JsonKey()
  final EmailValidator email;
  @override
  @JsonKey()
  final String otp;
  @override
  @JsonKey()
  final String remainTime;
  @override
  @JsonKey()
  final PasswordValidator newPassword;
  @override
  @JsonKey()
  final PasswordValidator confirmPassword;
  @override
  @JsonKey()
  final ForgotPasswordStatus status;
  @override
  @JsonKey()
  final ForgotPasswordPage currentPage;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      __$ForgotPasswordStateCopyWithImpl<_ForgotPasswordState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotPasswordState &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.remainTime, remainTime) ||
                other.remainTime == remainTime) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPageIndex, email, otp,
      remainTime, newPassword, confirmPassword, status, currentPage);

  @override
  String toString() {
    return 'ForgotPasswordState(currentPageIndex: $currentPageIndex, email: $email, otp: $otp, remainTime: $remainTime, newPassword: $newPassword, confirmPassword: $confirmPassword, status: $status, currentPage: $currentPage)';
  }
}

/// @nodoc
abstract mixin class _$ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$ForgotPasswordStateCopyWith(_ForgotPasswordState value,
          $Res Function(_ForgotPasswordState) _then) =
      __$ForgotPasswordStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int currentPageIndex,
      EmailValidator email,
      String otp,
      String remainTime,
      PasswordValidator newPassword,
      PasswordValidator confirmPassword,
      ForgotPasswordStatus status,
      ForgotPasswordPage currentPage});
}

/// @nodoc
class __$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$ForgotPasswordStateCopyWith<$Res> {
  __$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final _ForgotPasswordState _self;
  final $Res Function(_ForgotPasswordState) _then;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentPageIndex = null,
    Object? email = null,
    Object? otp = null,
    Object? remainTime = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? status = null,
    Object? currentPage = null,
  }) {
    return _then(_ForgotPasswordState(
      currentPageIndex: null == currentPageIndex
          ? _self.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValidator,
      otp: null == otp
          ? _self.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      remainTime: null == remainTime
          ? _self.remainTime
          : remainTime // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as PasswordValidator,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordStatus,
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordPage,
    ));
  }
}

// dart format on
