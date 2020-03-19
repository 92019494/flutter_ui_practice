import 'package:flutter/material.dart';
import 'package:ui_practice/shared/styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> places = [
    'Venice',
    'Paris',
    'Rome',
    'Venice',
    'Paris',
    'Rome',
    'Venice',
    'Paris',
    'Rome'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Home',
            style: myTextStyle,
          )),
      backgroundColor: Color(0xFFFFF5EE),
      body: Container(
          height: double.infinity,
          child: Container(
              child: ListView.builder(
            itemCount: places.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blueAccent,
                    ),
                    padding: EdgeInsets.all(12),
                    
                    alignment: Alignment.center,
                    child: Row(children: <Widget>[
                      
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 35,
                      ),
                      SizedBox(width: 12),
                      Expanded(
                                              child: Text(
                          places[index],
                          style: myTextStyle,
                          
                        ),
                      )
                    ])),
              );
            },
          ))),
    );
  }
}
