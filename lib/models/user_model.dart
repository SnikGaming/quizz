class UserModel {
  String? idUser, name, email, pic;
  int? heart;
  UserModel({this.idUser, this.name, this.email, this.pic, this.heart});
  toJson() {
    return {
      'idUser': idUser,
      'email': email,
      'name': name,
      'pic': pic,
      'heart': heart,
    };
  }

  static UserModel fromJson(Map<String, dynamic> json) => UserModel(
        idUser: json["idUser"],
        email: json["email"],
        name: json["name"],
        pic: json["pic"],
        heart: json["heart"],
      );
}
