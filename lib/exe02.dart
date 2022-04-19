import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      appBar: AppBar(
        title: Text('Application'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print('Back');
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('Menu');
              },
              icon: Icon(Icons.more_vert))
        ],
        backgroundColor: Colors.grey,
      ),
      body: meuBody(),
    );
  }
}

class meuBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children:[
            const Text('Personal Info',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const TextField(
              decoration: InputDecoration(labelText: 'First name'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Last name'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Birthday'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Social Security'),
                ),
              ],
            )
          ],
        )));
  }
}
