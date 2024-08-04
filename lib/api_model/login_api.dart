class ProfileModel {
  late final User user;
  late final String token;
  late final bool status;

  ProfileModel.fromJson(Map<String, dynamic> json){
    user = User.fromJson(json['user']);
    token = json['token'];
    status = json['status'];
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
