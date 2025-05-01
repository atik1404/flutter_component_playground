import 'package:equatable/equatable.dart';

class SplashScreenState extends Equatable {
  final bool shouldNavigateToNextScreen;
  final bool isLoading;

  const SplashScreenState({
    required this.isLoading,
    required this.shouldNavigateToNextScreen,
  });

  SplashScreenState copyWith({
    bool? isLoading,
    bool? shouldNavigateToNextScreen,
  }) {
    return SplashScreenState(
      isLoading: isLoading ?? this.isLoading,
      shouldNavigateToNextScreen:
          shouldNavigateToNextScreen ?? this.shouldNavigateToNextScreen,
    );
  }

  @override
  List<Object?> get props => [isLoading, shouldNavigateToNextScreen];
}
