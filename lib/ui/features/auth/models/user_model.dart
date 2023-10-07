class UserModel {
  String name;
  String email;
  String? profileImage;
  String? phoneNumber;
  String? bio;
  String? userId;

  UserModel({
    required this.name,
    required this.email,
    this.profileImage,
    required this.phoneNumber,
    required this.bio,
    required this.userId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      profileImage: json['profileImage'],
      phoneNumber: json['phoneNumber'],
      bio: json['bio'],
      userId: json['userId'],
    );
  }

  Map<String, dynamic> toMap() => {
        'name': name,
        'email': email,
        'phoneNumber': phoneNumber,
        'profileImage': profileImage,
        'bio': bio,
        'userId': userId,
      };
}
