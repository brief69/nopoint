

// home_view_model.dart
import 'package:flutter/foundation.dart';  // Flutterの基本的な機能をインポート
import 'package:flutter_riverpod/flutter_riverpod.dart';  // Riverpodをインポート
import 'base_view_model.dart';  // 基本的なビューモデルクラスをインポート
import '../services/firebase_service.dart';  // Firebaseサービスをインポート
import '../models/user_model.dart';  // ユーザーモデルをインポート

// HomeViewModelのインスタンスを提供するRiverpodプロバイダー
final homeViewModelProvider = ChangeNotifierProvider<HomeViewModel>((ref) {
  return HomeViewModel(ref);
});

// ホームビューに関連するデータと操作を管理するビューモデルクラス
class HomeViewModel extends BaseViewModel {
  HomeViewModel(Ref ref) : super(ref);  // コンストラクタ

  UserModel? _currentUser;  // 現在のユーザー
  bool _isLoading = false;  // データの読み込み中かどうかを示すフラグ

  UserModel? get currentUser => _currentUser;  // 現在のユーザーを取得するゲッター
  bool get isLoading => _isLoading;  // データの読み込み中かどうかを取得するゲッター

  // 現在のユーザーを設定するメソッド
  void setCurrentUser(UserModel user) {
    _currentUser = user;
    notifyListeners();
  }

  // データの読み込み中フラグを設定するメソッド
  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  // ユーザーデータを非同期に取得するメソッド
  Future<void> fetchUserData() async {
    setLoading(true);
    try {
      final firebaseService = ref.read(firebaseServiceProvider);  // Firebaseサービスを取得
      final user = await firebaseService.getUserData();  // ユーザーデータを取得
      setCurrentUser(user);  // 現在のユーザーを設定
    } catch (e) {
      // エラーハンドリング
      // 現在はコンソールにエラーを出力
      if (kDebugMode) {
        print('Error fetching user data: $e');
      }
    } finally {
      setLoading(false);  // データの読み込みを終了
    }
  }

  // ここにホームビューに関連する他の関数を追加
}
