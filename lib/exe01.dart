import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0), // here the desired height
        child: AppBar(
        ),
      ),
      body: Column(
        children: [
          Row(
            children:[
              Container(
                height: 94.6,
                width: 270,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.rectangle
                )             
              ),
              Container(
                height: 94.6,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.rectangle
                )             
              )
            ],
          ),
          Row(
            children:[
              Container(
                height: 94.6,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.rectangle
                )             
              ),
              Container(
                height: 94.6,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle
                )             
              ),
              Container(
                height: 94.6,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.rectangle
                )             
              )
            ],
          ),
          Row(
            children:[
              Container(
                height: 94.6,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.rectangle
                )             
              ),
              Container(
                height: 94.6,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.rectangle
                )             
              ),
              Container(
                height: 94.6,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.rectangle
                )             
              )
            ],
          ),
          Row(
            children:[
              Container(
                height: 94.6,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle
                )             
              ),
              Container(
                height: 94.6,
                width: 270,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.rectangle
                )             
              )
            ],
          ),
          Row(
            children:[
              Container(
                height: 94.6,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.rectangle
                )             
              ),
              Container(
                height: 94.6,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.rectangle
                )             
              ),
              Container(
                height: 94.6,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.rectangle
                )             
              )
            ],
          ),
          Row(
            children:[
              Container(
                height: 94.6,
                width: 270,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.rectangle
                )             
              ),
              Container(
                height: 94.6,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle
                )             
              )
            ],
          )
        ],
      )
    );
  }

}
