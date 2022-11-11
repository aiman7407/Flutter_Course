import 'package:bloc_session1/screens/contact_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/contacts/contacts_cubit.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>ContactsCubit())
      ],
      child: MaterialApp(
        home: ContactsScreen(),
      ),
    );
  }
}
