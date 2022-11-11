import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {

  final String hint;
  final TextEditingController controller;


  MyTextField({required this.hint,required this.controller});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:EdgeInsets.only(top:20,right:10,left:10),
      child:Card(
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(20),
        ),
        color:Colors.grey,
        child: Container(

          padding:EdgeInsets.only(left:12),
          child: TextFormField(
            controller: controller ,
            decoration:InputDecoration(
              hintText:hint,
              border:InputBorder.none,
              fillColor:Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
