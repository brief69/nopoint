

// main.dart
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';

// アプリケーションのメイン関数
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Flutterのバインディングを初期化
  await Firebase.initializeApp( // Firebaseを初期化
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp())); // アプリケーションを実行
}

// MyAppクラスは、アプリケーションのルートウィジェットを定義する
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // buildメソッドは、アプリケーションのUIを構築する
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoPoint', // アプリケーションのタイトル
      theme: ThemeData( // アプリケーションのテーマデータ
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const App(), // アプリケーションのホーム画面
    );
  }
}
