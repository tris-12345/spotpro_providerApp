class UserModel {
  String name;
  String email;
  String createdAt;
  String service;
  String desc;
  String phoneNumber;
  String uid;

  UserModel({
    required this.name,
    required this.email,
    required this.createdAt,
    required this.service,
    required this.phoneNumber,
    required this.desc,
    required this.uid,

  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      uid: map['uid'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      createdAt: map['createdAt'] ?? '',
      service: map['service'] ?? '',
      desc: map['desc'] ?? ''
    );
  }


  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
      "uid": uid,
      "phoneNumber": phoneNumber,
      "createdAt": createdAt,
      "service":service,
      "desc":desc
    };
  }
}
