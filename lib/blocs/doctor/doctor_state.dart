part of 'doctor_cubit.dart';

@immutable
abstract class DoctorState {}

class DoctorInitial extends DoctorState {}

class DoctorRegisterError extends DoctorState {}
class DoctorRegisterSuccess extends DoctorState {}
class DoctorRegisterLoading extends DoctorState {}



class DoctorLoginError extends DoctorState {}
class DoctorLoginSuccess extends DoctorState {}
class DoctorLoginLoading extends DoctorState {}

class DoctorGetAllPatientSuccess extends DoctorState {}
class DoctorGetAllPatientError extends DoctorState {}
class DoctorGetAllPatientLoading extends DoctorState {}



class DoctorAddPatientSuccess  extends DoctorState {}
class DoctorAddPatientError extends DoctorState {}
class DoctorAddPatientLoading  extends DoctorState {}