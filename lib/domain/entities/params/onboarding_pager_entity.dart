import 'package:flutter_component_playground/designsystem/resources/app_images.dart';

final class OnboardingPagerEntity {
  final String title;
  final String subTitle;
  final String description;
  final String image;

  const OnboardingPagerEntity({
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
  });
}

final List<OnboardingPagerEntity> onboardingPagerList = [
  const OnboardingPagerEntity(
    title: 'The Simple Way to',
    subTitle: 'find the best!',
    description:
        'Your perfect movie night starts here. Explore, stream, and love every scene.!',
    image: AppImages.imgIntroduction1,
  ),
  const OnboardingPagerEntity(
    title: 'The Best Design',
    subTitle: 'Strategy',
    description:
        'From Oscar winners to hidden gems—every film awaits your spotlight.',
    image: AppImages.imgIntroduction2,
  ),
];
