

// base_view_model.dart
import 'package:flutter/foundation.dart';  // Flutterの基本的な機能をインポート
import 'package:flutter_riverpod/flutter_riverpod.dart';  // Riverpodをインポート

// 全てのビューモデルが継承する基本的なビューモデルクラス
abstract class BaseViewModel extends ChangeNotifier {
  final Ref ref;  // RiverpodのRefオブジェクト

  // コンストラクタ：Refオブジェクトを受け取り、それをフィールドに設定
  BaseViewModel(this.ref);

  // 全てのビューモデルで共通の機能をここに追加
}
