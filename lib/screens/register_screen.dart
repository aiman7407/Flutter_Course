import 'package:doctor_app/blocs/doctor/doctor_cubit.dart';
import 'package:doctor_app/components/my_button.dart';
import 'package:doctor_app/screens/login_screen.dart';
import 'package:doctor_app/src/app_colors.dart';
import 'package:doctor_app/utils/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/my_textfield.dart';
import 'home_screen.dart';


class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer

      <DoctorCubit,DoctorState>(
        listener: (context, state) {
          if(state is DoctorRegisterSuccess)
            {
              AppNavigator.navigateToNewScreen(context, HomeScreen(), true);
            }
        },
        builder:  (context,state){
          var cubit= DoctorCubit.get(context);
          return Scaffold(
            backgroundColor: AppColors.kMainColor,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,
                        vertical: 30
                    ),
                    child: Text('D o c t o r   App'.toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white
                      ),
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight:Radius.circular(20)
                        )
                    ),
                    width: double.infinity,
                    child: Column(
                      children: [
                        SizedBox(height: 100,),
                        Text('Create Your account',
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center  ,
                          children: [
                            Text('Already have an account?',
                              style: TextStyle(
                                  color: AppColors.kLightGreyColor
                              ),
                            ),
                            TextButton(onPressed: (){
                              AppNavigator.navigateToNewScreen(context, LoginScreen(), false);
                            }, child: Text('Login ! '))
                          ],
                        ),

                        MyTextField(lable: 'Name',
                        controller: cubit.nameController,
                        ),
                        MyTextField(lable: 'Email',
                        controller: cubit.emailController,
                        ),
                        MyTextField(lable: 'Password',
                            isPassword: true,
                        controller: cubit.passwordController,
                        ),
                        MyTextField(lable: 'Title',
                        controller: cubit.titleController,
                        ),
                        MyTextField(lable: 'Address',
                        controller: cubit.addressController,
                        ),

                        if(state is DoctorRegisterLoading)

                        LinearProgressIndicator(),
                        MyButton(label: 'Register', function: (){
                          cubit.register();
                        })


                      ],
                    ),
                  )

                ],
              ),
            ),
          );
        },
        );
  }
}
