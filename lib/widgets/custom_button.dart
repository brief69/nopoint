

// custom_button.dart
import 'package:flutter/material.dart';  // Flutterのマテリアルデザインパッケージをインポート
import 'package:nopoint/utils/constants.dart';  // 定数をインポート

// カスタムボタンのウィジェット
class CustomButton extends StatelessWidget {
  final String text;  // ボタンのテキスト
  final VoidCallback onPressed;  // ボタンが押されたときのコールバック
  final Color? color;  // ボタンの色（オプション）
  final Color? textColor;  // テキストの色（オプション）

  // コンストラクタ
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
  }) : super(key: key);

  // ウィジェットのビルドメソッド
  @override
  Widget build(BuildContext context) {
    // ElevatedButtonを返す
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor ?? Colors.white, // テキストの色を設定（デフォルトは白）
        backgroundColor: color ?? Theme.of(context).primaryColor, // ボタンの色を設定（デフォルトはプライマリカラー）
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),  // ボタンの形状を設定
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),  // パディングを設定
        textStyle: const TextStyle(
          fontFamily: AppConstants.robotoMedium,  // フォントファミリーを設定
          fontSize: 16,  // フォントサイズを設定
        ),
      ),
      onPressed: onPressed,  // ボタンが押されたときのアクションを設定
      child: Text(
        text,
        style: TextStyle(
          fontFamily: AppConstants.robotoMedium,  // フォントファミリーを設定
          color: textColor ?? Colors.white, // テキストの色を設定（デフォルトは白）
        ),
      ),
    );
  }
}
