import 'package:doctor_app/models/patient_requst.dart';

class AddPatientRequst {
  Patient? data;
  String? message;
  int? code;
  String? errors;

  AddPatientRequst({this.data, this.message, this.code, this.errors});

  AddPatientRequst.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Patient.fromJson(json['data']) : null;
    message = json['message'];
    code = json['code'];
    errors = json['errors'];
  }


}

class Data {
  int? id;
  String? name;
  String? dateOfBirth;
  String? diagnosis;
  String? address;
  String? visitTime;
  int? userId;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.name,
        this.dateOfBirth,
        this.diagnosis,
        this.address,
        this.visitTime,
        this.userId,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    dateOfBirth = json['date_of_birth'];
    diagnosis = json['diagnosis'];
    address = json['address'];
    visitTime = json['visit_time'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['date_of_birth'] = this.dateOfBirth;
    data['diagnosis'] = this.diagnosis;
    data['address'] = this.address;
    data['visit_time'] = this.visitTime;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}