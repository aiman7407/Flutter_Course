class Authentication {
  Doctor? data;
  String? token;
  String? message;
  int? code;


  Authentication({this.data, this.token, this.message, this.code, });

  Authentication.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Doctor.fromJson(json['data']) : null;
    token = json['token'];
    message = json['message'];
    code = json['code'];

  }

}

class Doctor {
  int? id;
  String? name;
  String? email;
  String? title;
  String? address;
  String? type;
  String? createdAt;
  String? updatedAt;

  Doctor(
      {this.id,
        this.name,
        this.email,
        this.title,
        this.address,
        this.type,
        this.createdAt,
        this.updatedAt});

  Doctor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    title = json['title'];
    address = json['address'];
    type = json['type'];

    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }


}