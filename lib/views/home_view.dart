import 'package:bloc_session/blocs/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter With Bloc'),
      ),
      body: BlocConsumer<CounterCubit,CounterState>(
        listener: (context,state){} ,
        builder: (context,state){
          var cubit=CounterCubit.get(context);
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                   cubit.incrementCounter();
                    // increament
                    print('Do Increment');
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
                Text(
                  '${cubit.counter}',
                  style: TextStyle(fontSize: 50, color: Colors.red),
                ),
                TextButton(
                    onPressed: () {
                      cubit.decrementCounter();
                      print('Do Decrement');
                    },
                    child: Text(
                      'minus',
                      style: TextStyle(fontSize: 35),
                    ))
              ],
            ),
          ) ;
        },
      ),
    );
  }
}
