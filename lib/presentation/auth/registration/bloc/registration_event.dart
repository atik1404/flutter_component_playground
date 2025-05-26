
import 'package:freezed_annotation/freezed_annotation.dart';
part 'registration_event.freezed.dart';

@freezed
abstract class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.nameChanged(String name) = NameChanged;
  const factory RegistrationEvent.passwordChanged(String password) = PasswordChanged;
  const factory RegistrationEvent.confirmPasswordChanged(String confirmPassword) = ConfirmPasswordChanged;
  const factory RegistrationEvent.emailChanged(String email) = EmailChanged;
  const factory RegistrationEvent.privacyPolicyAccepted(bool isAccepted) = PrivacyPolicyAccepted;
  const factory RegistrationEvent.registrationSubmitted() = RegistrationSubmitted;
}
