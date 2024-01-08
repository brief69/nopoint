

// constants.dart
// このファイルには、NoPointアプリで使用されるすべての定数が含まれています。
class AppConstants {
  // Firebaseのコレクション名
  static const String usersCollection = 'users';

  // アプリのテキスト定数
  static const String appName = 'NoPoint';
  static const String welcomeMessage = 'Welcome to $appName!';

  // エラーメッセージ
  static const String genericErrorMessage = '何か問題が発生しました。後でもう一度お試しください。';

  // ボタンのテキスト
  static const String loginButtonText = 'ログイン';
  static const String registerButtonText = '登録';
  static const String logoutButtonText = 'ログアウト';

  // アセットのパス
  static const String logoImagePath = 'assets/images/logo.png';

  // フォント名
  static const String robotoRegular = 'Roboto-Regular';
  static const String robotoMedium = 'Roboto-Medium';
  static const String robotoBold = 'Roboto-Bold';

  // SharedPreferencesのキー
  static const String isLoggedInKey = 'isLoggedIn';
  static const String userTokenKey = 'userToken';

  // その他の定数
  // アプリ全体で必要となるその他の定数を追加します
}
