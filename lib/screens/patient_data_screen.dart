import 'package:doctor_app/models/patient_requst.dart';
import 'package:doctor_app/src/app_colors.dart';
import 'package:flutter/material.dart';


class PatientDataScreen extends StatelessWidget {
  final Patient patient;

  PatientDataScreen({required this.patient});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kMainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kMainColor,
        centerTitle: true,
        title: Text(
          patient.visitTime!,
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
        body:
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                  radius: 75,
                  backgroundImage:
             NetworkImage('https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg')
              ),
              Text(patient.name!,
                style: TextStyle(
                    fontSize:
                    25,
                    fontWeight: FontWeight.bold,
                  color: Colors.white

                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 15,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(

                        children: [

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(patient.diagnosis!,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red[600]
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.alarm),
                                Text(patient.visitTime!,
                                style: TextStyle(
                                  fontSize: 20
                                ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Address: ',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                Text(patient.address!,
                                style: TextStyle(
                                  fontSize: 20
                                ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Date of Birth:',style: TextStyle(
                                    fontSize: 20
                                ),),
                                Text(patient.dateOfBirth!,
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Notes: ...................................................................................................................................................................................................................................................',
                          style: TextStyle(
                            fontSize: 22
                          ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )

            ],
          ),
        )
      );
  }
}
