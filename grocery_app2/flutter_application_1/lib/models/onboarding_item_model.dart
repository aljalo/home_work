class OnboardingItemModel {
  final String image;
  final String title;
  final String subTitle;

  OnboardingItemModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<OnboardingItemModel> getOnboardingItems() {
  return [
    OnboardingItemModel(
      image: 'assets/images/1.png',
      title: 'title',
      subTitle: 'subTitle',
    ),
    OnboardingItemModel(
      image: 'assets/images/1.png',
      title: 'title',
      subTitle: 'subTitle',
    ),
    OnboardingItemModel(
      image: 'assets/images/3.png',
      title: 'title',
      subTitle: 'subTitle',
    ),
  ];
}
