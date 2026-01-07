class OnboardingModel{
  String image;
  String title;
  String text;
  OnboardingModel({required this.image,required this.title,required this.text});

  static List<OnboardingModel>onboardingModel=[
    
    OnboardingModel(
        image: "assets/images/onboarding.png",
        title: "Discover New Recipes Daily",
        text: "Explore thousands of delicious recipes curated just for you. From quick meals to gourmet dishes."),

    OnboardingModel(
        image: "assets/images/onboarding.png",
        title: "Scan Your Fridge",
        text: "Use AI to scan your ingredients and get personalized recipe suggestions. Never waste food again."),

    OnboardingModel(
        image: "assets/images/onboarding.png",
        title: "Plan Your Weekly Meals",
        text: "Organize your meals for the entire week. Auto-generate shopping lists and save time."),

  ];

}