class AppConstants {
  AppConstants._();

  /// shared preferences keys
  static const String keyLangSelected = 'keyLangSelected';
  static const String keyUser = 'keyUser';
  static const String keyToken = 'keyToken';
  static const String keySelectedCurrency = 'keySelectedCurrency';
  static const String keyAppThemeMode = 'keyAppThemeMode';
  static const String keyGlobalSettings = 'keyGlobalSettings';
  static const String keyTranslations = 'keyTranslations';
  static const String keyLanguageData = 'keyLanguageData';
  static const String keyLangLtr = 'keyLangLtr';
  static const String keyWallet = 'keyWallet';
  static const String keyShop = 'keyShop';
  static const String keySystemLanguage = 'keySystemLanguage';

  /// hero tags
  static const String heroTagAddOrderButton = 'heroTagAddOrderButton';
  static const String heroTagListNotification = 'heroTagListNotification';
  static const String heroTagOrderHistory = 'heroTagOrderHistory';
  static const String heroTagIncomePage = 'heroTagIncomePage';

  /// api urls
  static const String baseUrl = 'https://64aba8b69edb4181202e4456.mockapi.io';
  static const String imageBaseUrl = '$baseUrl/storage/images';
  //static const String chatGpt = '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';




  /// demo app info
  static const String demoSellerLogin = 'sellers@githubit.com';
  static const String demoSellerPassword = 'seller';
}



enum SnackBarType { success, info, error }

enum ExtrasType { color, text, image }


enum UploadType {

  users,
}

