

// firebase_service.dart
// Firebaseのサービスを提供するクラスと関連するプロバイダーを含む
import 'package:cloud_firestore/cloud_firestore.dart';  // Cloud Firestoreをインポート
import 'package:firebase_auth/firebase_auth.dart';  // Firebase認証をインポート
import 'package:flutter_riverpod/flutter_riverpod.dart';  // Riverpodをインポート
import '../models/user_model.dart';  // ユーザーモデルをインポート

// FirebaseServiceのインスタンスを提供するRiverpodプロバイダー
final firebaseServiceProvider = Provider<FirebaseService>((ref) {
  return FirebaseService(FirebaseAuth.instance, FirebaseFirestore.instance);
});

// Firebaseのサービスを提供するクラス
class FirebaseService {
  final FirebaseAuth _auth;  // Firebase認証のインスタンス
  final FirebaseFirestore _firestore;  // Cloud Firestoreのインスタンス

  // コンストラクタ
  FirebaseService(this._auth, this._firestore);

  // Firestoreからユーザーデータを取得する関数
  Future<UserModel> getUserData() async {
    try {
      final user = _auth.currentUser;  // 現在のユーザーを取得
      if (user != null) {
        final userData = await _firestore.collection('users').doc(user.uid).get();  // Firestoreからユーザーデータを取得
        if (userData.exists) {
          return UserModel.fromMap(userData.data()!);  // ユーザーデータをUserModelに変換
        } else {
          throw Exception('User data does not exist');  // ユーザーデータが存在しない場合、例外をスロー
        }
      } else {
        throw Exception('No user logged in');  // ユーザーがログインしていない場合、例外をスロー
      }
    } catch (e) {
      rethrow;  // 例外を再スロー
    }
  }

  // ここに他のFirebase関連の関数を追加
  // 例：signIn, signUp, signOut, updateUserDataなど
}
