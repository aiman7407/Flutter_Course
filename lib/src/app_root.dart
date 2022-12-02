import 'package:doctor_app/blocs/doctor/doctor_cubit.dart';
import 'package:doctor_app/service/sp_helper/sp_helper.dart';
import 'package:doctor_app/service/sp_helper/sp_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/home_screen.dart';
import '../screens/register_screen.dart';



class AppRoot extends StatelessWidget {
final Widget screen;

AppRoot({required this.screen});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>DoctorCubit())
      ],
      child: MaterialApp(

        home: screen
      ),
    );
  }
}
