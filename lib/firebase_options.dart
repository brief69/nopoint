

// firebase_options.dart

// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
// Firebaseの初期設定オプションを提供するクラス
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// プラットフォームごとのデフォルトの[FirebaseOptions]を提供します。
///
/// 使用例:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  // 現在のプラットフォームに適したFirebaseOptionsを返す
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web; // Webプラットフォームの場合
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android; // Androidプラットフォームの場合
      case TargetPlatform.iOS:
        return ios; // iOSプラットフォームの場合
      case TargetPlatform.macOS:
        return macos; // macOSプラットフォームの場合
      case TargetPlatform.windows:
        // Windowsプラットフォームはサポートされていない場合のエラー
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAv8k1oOJxgUywnzHu9Grxr4_JRzV8uXoA',
    appId: '1:548459621580:web:caf644ddcf82f4f42da669',
    messagingSenderId: '548459621580',
    projectId: 'nopoint-9ce36',
    authDomain: 'nopoint-9ce36.firebaseapp.com',
    storageBucket: 'nopoint-9ce36.appspot.com',
    measurementId: 'G-5DVL78LEXY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyARvFEMLpSTDMahcdsTDq4gHx7AtZku4X4',
    appId: '1:548459621580:android:77bde5bcb818e5e62da669',
    messagingSenderId: '548459621580',
    projectId: 'nopoint-9ce36',
    storageBucket: 'nopoint-9ce36.appspot.com',
  );

  // iOSプラットフォーム用のFirebaseOptions
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDltt5UoF8DNpC0xw_4-74A1PIyOvbj4oU',
    appId: '1:548459621580:ios:1f3624a4d2dd49a42da669',
    messagingSenderId: '548459621580',
    projectId: 'nopoint-9ce36',
    storageBucket: 'nopoint-9ce36.appspot.com',
    iosBundleId: 'com.example.nopoint1',
  );

  // macOSプラットフォーム用のFirebaseOptions
  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDltt5UoF8DNpC0xw_4-74A1PIyOvbj4oU',
    appId: '1:548459621580:ios:d42fe6823c9a0a452da669',
    messagingSenderId: '548459621580',
    projectId: 'nopoint-9ce36',
    storageBucket: 'nopoint-9ce36.appspot.com',
    iosBundleId: 'com.example.nopoint1.RunnerTests',
  );
}