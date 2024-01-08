

 // app.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nopoint/views/home_view.dart';

class App extends ConsumerWidget { // AppクラスはConsumerWidgetを継承し、Riverpodの機能を利用する
  const App({Key? key}) : super(key: key); // コンストラクタ

  @override
  Widget build(BuildContext context, WidgetRef ref) { // buildメソッドでUIを構築
    return MaterialApp( // MaterialAppウィジェットを返す
      title: 'NoPoint', // アプリケーションのタイトル
      theme: ThemeData( // アプリケーションのテーマデータを設定
        primarySwatch: Colors.blue, // プライマリカラーを青に設定
        visualDensity: VisualDensity.adaptivePlatformDensity, // ビジュアル密度を適応型に設定
      ),
      home: const HomeView(), // ホームビューをアプリケーションのホームとして設定
    );
  }
}
