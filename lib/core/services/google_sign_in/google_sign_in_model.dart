import 'dart:convert';

import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInModel {
  final String displayName;
  final String email;
  final String id;
  final String photoUrl;
  GoogleSignInModel({
    required this.displayName,
    required this.email,
    required this.id,
    required this.photoUrl,
  });

  GoogleSignInModel copyWith({
    String? displayName,
    String? email,
    String? id,
    String? photoUrl,
  }) {
    return GoogleSignInModel(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      id: id ?? this.id,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'displayName': displayName,
      'email': email,
      'id': id,
      'photoUrl': photoUrl,
    };
  }

  factory GoogleSignInModel.fromMap(Map<String, dynamic> map) {
    return GoogleSignInModel(
      displayName: map['displayName'] ?? '',
      email: map['email'] ?? '',
      id: map['id'] ?? '',
      photoUrl: map['photoUrl'] ?? '',
    );
  }

  factory GoogleSignInModel.fromGoogleSignIn(GoogleSignInAccount userGoogle) {
    return GoogleSignInModel(
      displayName: userGoogle.displayName ?? '',
      email: userGoogle.email,
      id: userGoogle.id,
      photoUrl: userGoogle.photoUrl ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GoogleSignInModel.fromJson(String source) =>
      GoogleSignInModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GoogleSignInModel(name: $displayName, email: $email, id: $id, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GoogleSignInModel &&
        other.displayName == displayName &&
        other.email == email &&
        other.id == id &&
        other.photoUrl == photoUrl;
  }

  @override
  int get hashCode {
    return displayName.hashCode ^
        email.hashCode ^
        id.hashCode ^
        photoUrl.hashCode;
  }
}
