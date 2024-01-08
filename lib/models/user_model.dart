

// user_model.dart
// ユーザー情報を管理するクラス
class UserModel {
  final String id;  // ユーザーのID
  final String email;  // ユーザーのメールアドレス
  final String displayName;  // ユーザーの表示名
  final String? photoUrl;  // ユーザーの写真のURL

  // コンストラクタ
  UserModel({
    required this.id,
    required this.email,
    required this.displayName,
    this.photoUrl, required String name,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'] as String,
      email: data['email'] as String,
      displayName: data['displayName'] as String,
      photoUrl: data['photoUrl'] as String?, name: '',
    );
  }

  get name => null;

  // ユーザーモデルをマップに変換するメソッド
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'displayName': displayName,
      'photoUrl': photoUrl,
    };
  }

  // ユーザーモデルの文字列表現を返すメソッド
  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, displayName: $displayName, photoUrl: $photoUrl)';
  }

  // ユーザーモデルの等価性を判断するメソッド
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserModel &&
      other.id == id &&
      other.email == email &&
      other.displayName == displayName &&
      other.photoUrl == photoUrl;
  }

  // ユーザーモデルのハッシュコードを返すメソッド
  @override
  int get hashCode {
    return id.hashCode ^
      email.hashCode ^
      displayName.hashCode ^
      photoUrl.hashCode;
  }
}
