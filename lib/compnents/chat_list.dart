import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class ChatList extends StatelessWidget {

  final  messagesStream;
  final  userMail;
  ChatList({required this.messagesStream,required this.userMail});

  @override
  Widget build(BuildContext context) {

    print(userMail);
    return StreamBuilder(
        stream:messagesStream ,
        builder:(context,snapshot){
          if(snapshot.hasData)
            {
              QuerySnapshot values =snapshot.data as QuerySnapshot ;

              return Expanded(
                child: ListView.builder(
                  physics:  const BouncingScrollPhysics(),
                    itemCount: values.docs.length ,
                    itemBuilder:(context,index)
                {
                  return Align(
                    alignment:
                    values.docs[index]['sender']==userMail?
                    Alignment.centerRight:Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                       padding: const EdgeInsets.all(8),
                          decoration:

                          values.docs[index]['sender']==userMail?
                           BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft:   Radius.circular(20),
                                topRight:  Radius.circular(20),
                                bottomLeft:Radius.circular(20),
                              ),
                              color:
                             Colors.red[700]
                          )  :  BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft:   Radius.circular(20),
                                topRight:  Radius.circular(20),
                                bottomRight:Radius.circular(20),
                              ),
                              color:
                              Colors.grey[500]
                          ),

                          child: Column(
                            children: [
                              Text(values.docs[index]['text'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20
                              ),
                              ),
                             // Text(values.docs[index]['time'].toString())
                            ],
                          )),
                    ),
                  );
                }),
              );
            }
          else{
            const Center(
              child:
              Text('Data is empty'),
            );
          }

          return Container();
        } );
  }
}
