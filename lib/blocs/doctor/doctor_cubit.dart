import 'package:bloc/bloc.dart';
import 'package:doctor_app/models/add_patient_request.dart';
import 'package:doctor_app/models/patient_requst.dart';
import 'package:doctor_app/service/dio_helper/dio_helper.dart';
import 'package:doctor_app/service/sp_helper/sp_helper.dart';
import 'package:doctor_app/service/sp_helper/sp_keys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../models/authentication_model.dart';

part 'doctor_state.dart';

class DoctorCubit extends Cubit<DoctorState> {
  DoctorCubit() : super(DoctorInitial());

  static DoctorCubit get(context) => BlocProvider.of(context);

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController diagnosisController = TextEditingController();

  Authentication? authentication;
  AllPatientRequest ?allPatientRequest;
  AddPatientRequst ?addPatientRequst;

  register() {
    emit(DoctorRegisterLoading());
    DioHelper.postData(url: 'auth/register', data: {
      "name": nameController.text,
      "email": emailController.text,
      "password": passwordController.text,
      "title": titleController.text,
      "address": addressController.text
    }).then((value) {
      emit(DoctorRegisterSuccess());

      authentication = Authentication.fromJson(value.data);
      SharedPrefrenceHelper.saveData(
          key: SharedPreferencesKeys.token, value: authentication!.token);
    }).catchError((error) {
      emit(DoctorRegisterError());
      print(error);
    });
  }
  login() {
    emit(DoctorLoginLoading());
    DioHelper.postData(url: 'auth/login', data: {
      "email": emailController.text,
      "password": passwordController.text
    }).then((value) {
      emit(DoctorLoginSuccess());
      authentication = Authentication.fromJson(value.data);

      SharedPrefrenceHelper.saveData(
          key: SharedPreferencesKeys.token, value: authentication!.token);

      emailController.clear();
      passwordController.clear();
    }).catchError((error) {
      emit(DoctorLoginError());
      print(error);
    });
  }

  getAllPatient() {
    emit(DoctorGetAllPatientLoading());
    DioHelper.getData(url: 'doctorpatients', query: {
      "token": SharedPrefrenceHelper.getData(key: SharedPreferencesKeys.token)
    }).then((value) {
      emit(DoctorGetAllPatientSuccess());
      allPatientRequest= AllPatientRequest.fromJson(value.data);

    }).catchError((error){
      emit(DoctorGetAllPatientError());
      print(error);
    });
  }
  
  addPatient()
  {
    emit(DoctorAddPatientLoading());
    DioHelper.postData(url: 'doctorpatients',
        query: {
      "token":SharedPrefrenceHelper.getData(key: SharedPreferencesKeys.token)
        },
        data:
    {
      "name":nameController.text,
       "date_of_birth":"2022-11-14 13:24:36",
      "diagnosis":diagnosisController.text,
      "address":addressController.text,
      "visit_time":"2022-11-14 13:24:36"

    }
    ).then((value) {
      print(value.data);
      emit(DoctorAddPatientSuccess());

    }).catchError((error){
      emit(DoctorAddPatientError());
      print(error);
    });
  }
}
