import 'package:flutter/material.dart';
import 'package:session_8/service/cache/cache_keys.dart';

import '../service/cache/cache_helper.dart';

class SharedPreferenceView extends StatefulWidget {
  @override
  _SharedPreferenceViewState createState() => _SharedPreferenceViewState();
}

class _SharedPreferenceViewState extends State<SharedPreferenceView> {
  int counter = 0;
  int oldCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Card(
            margin: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.grey[500],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Text(
                    '$counter',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        },
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: 50,
                          ),
                        )),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            counter--;
                          });
                        },
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontSize: 50,
                          ),
                        )),
                  ],
                ),
                ElevatedButton(
                    onPressed: () async {
                      CacheHelper.saveData(
                          key: MY_COUNTER_CACHE_KEY, value: counter);
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(fontSize: 20),
                    )),
                ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        oldCounter =
                            CacheHelper.getData(key: MY_COUNTER_CACHE_KEY);
                      });
                    },
                    child: Text('Get old Counter')),
                Material(
                  elevation: 2,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.amber,
                    child: Text(
                      'The old Counter was $oldCounter',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Image.network(
            'https://image.freepik.com/free-psd/3d-transparent-hourglass_23-2148938928.jpg',
            height: 340,
            width: 500,
          ),
        ],
      ),
    );
  }
}
