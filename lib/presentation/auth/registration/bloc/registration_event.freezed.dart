// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegistrationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationEvent()';
}


}

/// @nodoc
class $RegistrationEventCopyWith<$Res>  {
$RegistrationEventCopyWith(RegistrationEvent _, $Res Function(RegistrationEvent) __);
}


/// Adds pattern-matching-related methods to [RegistrationEvent].
extension RegistrationEventPatterns on RegistrationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NameChanged value)?  nameChanged,TResult Function( PasswordChanged value)?  passwordChanged,TResult Function( ConfirmPasswordChanged value)?  confirmPasswordChanged,TResult Function( EmailChanged value)?  emailChanged,TResult Function( PrivacyPolicyAccepted value)?  privacyPolicyAccepted,TResult Function( RegistrationSubmitted value)?  registrationSubmitted,TResult Function( CheckEmailAvailability value)?  checkEmailAvailability,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that);case EmailChanged() when emailChanged != null:
return emailChanged(_that);case PrivacyPolicyAccepted() when privacyPolicyAccepted != null:
return privacyPolicyAccepted(_that);case RegistrationSubmitted() when registrationSubmitted != null:
return registrationSubmitted(_that);case CheckEmailAvailability() when checkEmailAvailability != null:
return checkEmailAvailability(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NameChanged value)  nameChanged,required TResult Function( PasswordChanged value)  passwordChanged,required TResult Function( ConfirmPasswordChanged value)  confirmPasswordChanged,required TResult Function( EmailChanged value)  emailChanged,required TResult Function( PrivacyPolicyAccepted value)  privacyPolicyAccepted,required TResult Function( RegistrationSubmitted value)  registrationSubmitted,required TResult Function( CheckEmailAvailability value)  checkEmailAvailability,}){
final _that = this;
switch (_that) {
case NameChanged():
return nameChanged(_that);case PasswordChanged():
return passwordChanged(_that);case ConfirmPasswordChanged():
return confirmPasswordChanged(_that);case EmailChanged():
return emailChanged(_that);case PrivacyPolicyAccepted():
return privacyPolicyAccepted(_that);case RegistrationSubmitted():
return registrationSubmitted(_that);case CheckEmailAvailability():
return checkEmailAvailability(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NameChanged value)?  nameChanged,TResult? Function( PasswordChanged value)?  passwordChanged,TResult? Function( ConfirmPasswordChanged value)?  confirmPasswordChanged,TResult? Function( EmailChanged value)?  emailChanged,TResult? Function( PrivacyPolicyAccepted value)?  privacyPolicyAccepted,TResult? Function( RegistrationSubmitted value)?  registrationSubmitted,TResult? Function( CheckEmailAvailability value)?  checkEmailAvailability,}){
final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that);case EmailChanged() when emailChanged != null:
return emailChanged(_that);case PrivacyPolicyAccepted() when privacyPolicyAccepted != null:
return privacyPolicyAccepted(_that);case RegistrationSubmitted() when registrationSubmitted != null:
return registrationSubmitted(_that);case CheckEmailAvailability() when checkEmailAvailability != null:
return checkEmailAvailability(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  nameChanged,TResult Function( String password)?  passwordChanged,TResult Function( String confirmPassword)?  confirmPasswordChanged,TResult Function( String email)?  emailChanged,TResult Function( bool isAccepted)?  privacyPolicyAccepted,TResult Function()?  registrationSubmitted,TResult Function()?  checkEmailAvailability,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that.name);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that.confirmPassword);case EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case PrivacyPolicyAccepted() when privacyPolicyAccepted != null:
return privacyPolicyAccepted(_that.isAccepted);case RegistrationSubmitted() when registrationSubmitted != null:
return registrationSubmitted();case CheckEmailAvailability() when checkEmailAvailability != null:
return checkEmailAvailability();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  nameChanged,required TResult Function( String password)  passwordChanged,required TResult Function( String confirmPassword)  confirmPasswordChanged,required TResult Function( String email)  emailChanged,required TResult Function( bool isAccepted)  privacyPolicyAccepted,required TResult Function()  registrationSubmitted,required TResult Function()  checkEmailAvailability,}) {final _that = this;
switch (_that) {
case NameChanged():
return nameChanged(_that.name);case PasswordChanged():
return passwordChanged(_that.password);case ConfirmPasswordChanged():
return confirmPasswordChanged(_that.confirmPassword);case EmailChanged():
return emailChanged(_that.email);case PrivacyPolicyAccepted():
return privacyPolicyAccepted(_that.isAccepted);case RegistrationSubmitted():
return registrationSubmitted();case CheckEmailAvailability():
return checkEmailAvailability();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  nameChanged,TResult? Function( String password)?  passwordChanged,TResult? Function( String confirmPassword)?  confirmPasswordChanged,TResult? Function( String email)?  emailChanged,TResult? Function( bool isAccepted)?  privacyPolicyAccepted,TResult? Function()?  registrationSubmitted,TResult? Function()?  checkEmailAvailability,}) {final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that.name);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that.confirmPassword);case EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case PrivacyPolicyAccepted() when privacyPolicyAccepted != null:
return privacyPolicyAccepted(_that.isAccepted);case RegistrationSubmitted() when registrationSubmitted != null:
return registrationSubmitted();case CheckEmailAvailability() when checkEmailAvailability != null:
return checkEmailAvailability();case _:
  return null;

}
}

}

/// @nodoc


class NameChanged implements RegistrationEvent {
  const NameChanged(this.name);
  

 final  String name;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameChangedCopyWith<NameChanged> get copyWith => _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameChanged&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'RegistrationEvent.nameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class $NameChangedCopyWith<$Res> implements $RegistrationEventCopyWith<$Res> {
  factory $NameChangedCopyWith(NameChanged value, $Res Function(NameChanged) _then) = _$NameChangedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(this._self, this._then);

  final NameChanged _self;
  final $Res Function(NameChanged) _then;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(NameChanged(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordChanged implements RegistrationEvent {
  const PasswordChanged(this.password);
  

 final  String password;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordChangedCopyWith<PasswordChanged> get copyWith => _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'RegistrationEvent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class $PasswordChangedCopyWith<$Res> implements $RegistrationEventCopyWith<$Res> {
  factory $PasswordChangedCopyWith(PasswordChanged value, $Res Function(PasswordChanged) _then) = _$PasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(this._self, this._then);

  final PasswordChanged _self;
  final $Res Function(PasswordChanged) _then;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(PasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ConfirmPasswordChanged implements RegistrationEvent {
  const ConfirmPasswordChanged(this.confirmPassword);
  

 final  String confirmPassword;

/// Create a copy of RegistrationEvent
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
  return 'RegistrationEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class $ConfirmPasswordChangedCopyWith<$Res> implements $RegistrationEventCopyWith<$Res> {
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

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? confirmPassword = null,}) {
  return _then(ConfirmPasswordChanged(
null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EmailChanged implements RegistrationEvent {
  const EmailChanged(this.email);
  

 final  String email;

/// Create a copy of RegistrationEvent
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
  return 'RegistrationEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class $EmailChangedCopyWith<$Res> implements $RegistrationEventCopyWith<$Res> {
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

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(EmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PrivacyPolicyAccepted implements RegistrationEvent {
  const PrivacyPolicyAccepted(this.isAccepted);
  

 final  bool isAccepted;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrivacyPolicyAcceptedCopyWith<PrivacyPolicyAccepted> get copyWith => _$PrivacyPolicyAcceptedCopyWithImpl<PrivacyPolicyAccepted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrivacyPolicyAccepted&&(identical(other.isAccepted, isAccepted) || other.isAccepted == isAccepted));
}


@override
int get hashCode => Object.hash(runtimeType,isAccepted);

@override
String toString() {
  return 'RegistrationEvent.privacyPolicyAccepted(isAccepted: $isAccepted)';
}


}

/// @nodoc
abstract mixin class $PrivacyPolicyAcceptedCopyWith<$Res> implements $RegistrationEventCopyWith<$Res> {
  factory $PrivacyPolicyAcceptedCopyWith(PrivacyPolicyAccepted value, $Res Function(PrivacyPolicyAccepted) _then) = _$PrivacyPolicyAcceptedCopyWithImpl;
@useResult
$Res call({
 bool isAccepted
});




}
/// @nodoc
class _$PrivacyPolicyAcceptedCopyWithImpl<$Res>
    implements $PrivacyPolicyAcceptedCopyWith<$Res> {
  _$PrivacyPolicyAcceptedCopyWithImpl(this._self, this._then);

  final PrivacyPolicyAccepted _self;
  final $Res Function(PrivacyPolicyAccepted) _then;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isAccepted = null,}) {
  return _then(PrivacyPolicyAccepted(
null == isAccepted ? _self.isAccepted : isAccepted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class RegistrationSubmitted implements RegistrationEvent {
  const RegistrationSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationEvent.registrationSubmitted()';
}


}




/// @nodoc


class CheckEmailAvailability implements RegistrationEvent {
  const CheckEmailAvailability();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckEmailAvailability);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationEvent.checkEmailAvailability()';
}


}




// dart format on
