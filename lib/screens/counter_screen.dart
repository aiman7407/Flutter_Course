import 'package:flutter/material.dart';
import 'package:flutter_session3/components/my_button.dart';


class CounterScreen extends StatefulWidget {

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter= 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Counter Application',
          style: TextStyle(
              color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Card(
          elevation: 15 ,
          color: Colors.grey[300],
          child: SizedBox(
            height: 300,
            width: 300,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text('Counter',
                  style: TextStyle(
                      fontSize: 25
                  ),
                ),
                Text('$counter',
                  style: TextStyle(
                      fontSize: 25
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(
                      text: 'add',
                      color: Colors.green,
                      icon: Icons.add,
                      function: (){
                        setState(() {
                          counter++;
                        });

                        print(counter);
                        print('add');
                      },
                    ),
                    MyButton(
                      text: 'Minus',
                      icon: Icons.remove,
                      color: Colors.deepOrangeAccent,
                      function: (){
                        setState(() {
                          counter--;
                        });

                        print(counter);
                        print('minus');
                      },
                    )

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                MyButton(
                  text: 'Reset',
                  color: Colors.red,
                  icon: Icons.reply_sharp,
                  function: (){
                    setState(() {
                      counter=0;
                    });

                    print(counter);
                    print('reset');
                  },
                )
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
