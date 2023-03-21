// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  
  String? id;
  String name;
  int age;
  String email;
  String image;
  String city;
  UserModel({
    this.id,
    required this.name,
    required this.age,
    required this.email,
    required this.image,
    required this.city,
  });

  UserModel copyWith({
    String? id,
    String? name,
    int? age,
    String? email,
    String? image,
    String? city,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      email: email ?? this.email,
      image: image ?? this.image,
      city: city ?? this.city,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'age': age,
      'email': email,
      'image': image,
      'city': city,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] as String,
      age: map['age'] as int,
      email: map['email'] as String,
      image: map['image'] as String,
      city: map['city'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, age: $age, email: $email, image: $image, city: $city)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.age == age &&
      other.email == email &&
      other.image == image &&
      other.city == city;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      age.hashCode ^
      email.hashCode ^
      image.hashCode ^
      city.hashCode;
  }
}
