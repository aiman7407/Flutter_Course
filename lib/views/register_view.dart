import 'package:firebase_session/blocs/register/register_cubit.dart';
import 'package:firebase_session/core/toast/toast_config.dart';
import 'package:firebase_session/core/utils/app_naviagtor.dart';
import 'package:firebase_session/enums/toast_state.dart';
import 'package:firebase_session/views/chat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class RegisterView extends StatelessWidget {

  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit,RegisterState>(
      listener:(context,state){
        if(state is RegisterSuccessState) {
          ToastConfig.showToast(msg: 'Welcome To the app', toastStates:ToastStates.Success );
          AppNavigator.customNavigator(
              context: context, screen: ChatView(), finish: true);
        }
        if(state is RegisterErrorState)
          {
            ToastConfig.showToast(msg: state.error.toString(),
                toastStates: ToastStates.Error);
          }
      } ,
      builder: (context,state){
        ///important
        var cubit=RegisterCubit.get(context);
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.network('https://icon-library.com/images/chat-app-icon/chat-app-icon-0.jpg',
                  height: 300,
                  width:250,
                ),
                const  Text('Welcome to Chat App',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const Text('Here You can register to the app ! ',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                const   SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: emailController ,
                    decoration: const InputDecoration(
                      hintText: 'Please Enter Your E-mail',
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.mail,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController ,
                    decoration: const InputDecoration(
                      hintText: 'Please Enter Your Password',
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.vpn_key,
                      ),
                    ),
                  ),
                ),
                if(state is RegisterLoadingState)
                const   LinearProgressIndicator(),
                ElevatedButton( child: const Text('Register Now !',
                ),
                  onPressed: (){

                    print(emailController.text+passwordController.text);
                    cubit.userRegister(emailController.text, passwordController.text);
                  },
                )
              ],
            ),
          ),
        );
      } ,
    );
  }
}
