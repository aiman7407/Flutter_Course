import 'package:bloc_session/blocs/counter/counter_cubit.dart';
import 'package:bloc_session/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CounterCubit())
      ],
      child: MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
