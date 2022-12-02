import 'package:doctor_app/blocs/doctor/doctor_cubit.dart';
import 'package:doctor_app/screens/login_screen.dart';
import 'package:doctor_app/screens/patient_data_screen.dart';
import 'package:doctor_app/service/sp_helper/sp_helper.dart';
import 'package:doctor_app/service/sp_helper/sp_keys.dart';
import 'package:doctor_app/src/app_colors.dart';
import 'package:doctor_app/utils/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_new_patient.dart';

class HomeScreen extends StatefulWidget {



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    DoctorCubit.get(context).getAllPatient();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorCubit,DoctorState>(
        builder: (context, state) {

          var cubit= DoctorCubit.get(context);

          return Scaffold(

              backgroundColor: Colors.white,
            floatingActionButton: FloatingActionButton(
              backgroundColor: AppColors.kMainColor,
              child: Icon(Icons.person_add_sharp),
              onPressed: (){
                AppNavigator.navigateToNewScreen(context, AddNewPatient(), false);
              },
            ),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              actions: [
                IconButton(onPressed: (){
                  SharedPrefrenceHelper.removeData(key: SharedPreferencesKeys.token);
                  AppNavigator.navigateToNewScreen(context, LoginScreen(), true);
                }, icon: Icon(Icons.logout,
                color: Colors.red[600],
                ))
              ],
            ),
              body:
              cubit.allPatientRequest==null?
              Center(child: CircularProgressIndicator(
                color: AppColors.kMainColor,
              ),):
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(

                    physics: BouncingScrollPhysics(),
                    itemCount:cubit.allPatientRequest!.data!.data!.length ,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: (){
                          AppNavigator.navigateToNewScreen(context,
                              PatientDataScreen(patient:
                              cubit.allPatientRequest!.data!.data![index]
                              ), false);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            elevation: 6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IntrinsicWidth(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Text(cubit.allPatientRequest!.data!.data![index].name!,
                                          style: TextStyle(
                                            color: AppColors.kMainColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 16),
                                        child: Row(
                                          children: [
                                            Icon(Icons.alarm),
                                            Text(cubit.allPatientRequest!.data!.data![index].visitTime!)
                                          ],
                                        ),
                                      ),
                                      // ignore: prefer_const_constructors
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Divider(
                                          color: AppColors.kMainColor,
                                          thickness: 2,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                               Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
          );
        },
        listener: (context,state){});
  }
}
