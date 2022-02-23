import 'package:flutter/material.dart';
import 'package:form_session/views/enum_view.dart';
import 'package:form_session/views/fom_view.dart';
import 'package:form_session/views/islamic_view.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EnumView(),
    );
  }
}
