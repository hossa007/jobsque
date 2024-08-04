class ProfileModel {
  late  User user;
  late  String token;
  late  bool status;
  late Error error;

  ProfileModel.fromJson(Map<String, dynamic> json){
    user = User.fromJson(json['user']??{});
    token = json['token']??"";
    status = json['status']??false;
  }
}
class User {
  late final int id;
  late final String name,email,createdAt,updatedAt;
  User.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

}
class Error {

  late final String massage;
  late final bool status;

  Error.fromJson(Map<String, dynamic> json){
    massage = json['massage'];
    status = json['status'];
  }
}