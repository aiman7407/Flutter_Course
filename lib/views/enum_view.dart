import 'package:flutter/material.dart';
import 'package:form_session/src/enum.dart';

class EnumView extends StatefulWidget {

  @override
  _EnumViewState createState() => _EnumViewState();
}

class _EnumViewState extends State<EnumView> {
  GenderType selectedGender=GenderType.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(

          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    print('you have select male option');
                    selectedGender=GenderType.male;
                  });
                }
                ,
                child: Container(
                  alignment: Alignment.center,
                  color: selectedGender==GenderType.male? Colors.green : Colors.grey,
                  height: 100,
                  child: Text('Male',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  print('you have select female option');
                  setState(() {
                    selectedGender=GenderType.female;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  color: selectedGender==GenderType.female? Colors.green: Colors.grey,
                  height: 100,
                  child: Text('Female',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
