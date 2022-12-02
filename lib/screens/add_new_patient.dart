import 'package:doctor_app/blocs/doctor/doctor_cubit.dart';
import 'package:doctor_app/components/my_button.dart';
import 'package:doctor_app/screens/login_screen.dart';
import 'package:doctor_app/src/app_colors.dart';
import 'package:doctor_app/utils/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/my_textfield.dart';
import 'home_screen.dart';


class AddNewPatient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer

    <DoctorCubit,DoctorState>(
      listener: (context, state) {
        if(state is DoctorAddPatientSuccess )
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
                  child: Text('Patient registration'.toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
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
                      Text('Add your Patient easily now !',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),


                      MyTextField(lable: 'Name',
                        controller: cubit.nameController,
                      ),
                      MyTextField(lable: 'Diagnosis',
                        controller: cubit.diagnosisController,
                      ),
                      MyTextField(lable: 'Address',
                        controller: cubit.addressController,
                      ),
                      MyTextField(lable: 'Date of birth',
                        controller: cubit.passwordController,
                      ),
                      MyTextField(lable: 'Visit Time',
                        controller: cubit.titleController,
                      ),


                      if(state is DoctorAddPatientLoading )

                        LinearProgressIndicator(),
                      MyButton(label: 'Add Patient', function: (){
                        cubit.addPatient();
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
