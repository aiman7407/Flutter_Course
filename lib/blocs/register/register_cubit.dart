import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context)=>BlocProvider.of(context);


  userRegister(String email,String password)
  {
    emit(RegisterLoadingState());
    FirebaseAuth
        .instance
        .createUserWithEmailAndPassword(email: email, password: password
    ).then((value){
      emit(RegisterSuccessState());
    }).catchError((error){

      emit(RegisterErrorState(error));
    });
  }


}
