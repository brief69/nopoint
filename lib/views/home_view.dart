

// home_view.dart
import 'package:flutter/material.dart';  // Flutterのマテリアルデザインパッケージをインポート
import 'package:flutter_riverpod/flutter_riverpod.dart';  // Riverpodをインポート
import 'package:nopoint/viewmodels/home_view_model.dart';  // ホームビューモデルをインポート
import 'package:nopoint/widgets/custom_button.dart';  // カスタムボタンウィジェットをインポート
import 'package:nopoint/models/user_model.dart';  // ユーザーモデルをインポート

// ホームビュークラス
class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  // ビルドメソッド
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeViewModel = ref.watch(homeViewModelProvider);  // ホームビューモデルを取得

    // スカフォールドを返す
    return Scaffold(
      appBar: AppBar(
        title: const Text('NoPoint'),  // アプリバーのタイトル
      ),
      body: Center(
        child: homeViewModel.isLoading  // ローディング中かどうかをチェック
            ? const CircularProgressIndicator()  // ローディング中の場合、進行状況インジケータを表示
            : homeViewModel.currentUser != null  // 現在のユーザーが存在するかどうかをチェック
                ? UserInfoDisplay(user: homeViewModel.currentUser!)  // ユーザーが存在する場合、ユーザー情報を表示
                : CustomButton(  // ユーザーが存在しない場合、カスタムボタンを表示
                    onPressed: () => homeViewModel.fetchUserData(),  // ボタンが押されたときにユーザーデータを取得
                    text: 'Fetch User Data',  // ボタンのテキスト
                  ),
      ),
    );
  }
}

// ユーザー情報表示クラス
class UserInfoDisplay extends StatelessWidget {
  final UserModel user;  // ユーザーモデル

  const UserInfoDisplay({Key? key, required this.user}) : super(key: key);  // コンストラクタ

  // ビルドメソッド
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('User Name: ${user.name}'),  // ユーザー名を表示
        Text('User Email: ${user.email}'),  // ユーザーのメールを表示
        // 必要に応じて他のユーザー情報フィールドを追加
      ],
    );
  }
}
