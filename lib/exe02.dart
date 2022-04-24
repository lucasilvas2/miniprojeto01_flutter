import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form basic app',
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
      body: myBody(),
    );
  }
}

class myBody extends StatefulWidget {
  @override
  State<myBody> createState() => _myBodyState();
}

class _myBodyState extends State<myBody> {
  TextEditingController _dateInput = TextEditingController();
  @override
  void initState() {
    _dateInput.text = ""; 
    super.initState();
  }

  final listState = ["State1", "State2", "State3"];
  List<DropdownMenuItem<String>> _createListState() {
    return listState
        .map<DropdownMenuItem<String>>(
          (e) => DropdownMenuItem(
            value: e,
            child: Text(e),
          ),
        )
        .toList();
  }

  String? _stateItem;

  final listCountry = ["Country1", "Country2", "Country3"];
  List<DropdownMenuItem<String>> _createListCountry() {
    return listCountry
        .map<DropdownMenuItem<String>>(
          (e) => DropdownMenuItem(
            value: e,
            child: Text(e),
          ),
        )
        .toList();
  }

  String? _countryItem;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'Personal Info',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      textAlign: TextAlign.left,
                    ),
                  )),
              TextField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: TextField(
                        controller: _dateInput,
                        readOnly: true,
                        onTap: () async{
                          final DateTime? pickedDate = await showDatePicker(
                            context: context, 
                            initialDate: DateTime.now(), 
                            firstDate: DateTime(2000), 
                            lastDate: DateTime(2101),

                          );

                          if(pickedDate != null){
                            print(pickedDate);
                            String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                            print(formattedDate);

                            setState(() {
                              _dateInput.text = formattedDate;
                            });
                          }else{
                            print("Date is not selected");
                          }
                        },
                        decoration: const InputDecoration(
                          labelText: 'Birthday',
                          helperText: 'MM-DD-YYYY'
                  ))),
                  const Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                    labelText: 'Social Security',
                    helperText: '###-##-####'
                  )))
                ],
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'Residence address',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      textAlign: TextAlign.left,
                    ),
                  )),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Residence',
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'City',
                      )
                    ) 
                  ),
                  Expanded(              
                      child: DropdownButton(                             
                              items: _createListState(),
                              hint: Text("State"),
                              value: _stateItem,
                              underline: Container(
                                height: 1,
                                color: Colors.grey,                          
                              ),
                              onChanged: (String? value) => setState(() {
                                _stateItem = value ?? "";
                              }),
                            ),
                      /*DropdownButton<String>(
                              hint: Text("State"),
                              value: stateValue,
                              onChanged: (String? newValue){
                                setState(() {
                                  stateValue= newValue ?? "";
                                });
                              },
                              items: <String>['State', 'StateOne', 'StateTwo', 'StateFree', 'StateFour']
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList()
                            )*/
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                    labelText: 'ZIP code',
                  ))),
                  Expanded(
                    child: DropdownButton(
                              elevation: 16,
                              underline: Container(
                                height: 1,
                                color: Colors.grey,                          
                              ),
                              items: _createListCountry(),
                              hint: Text("Country"),
                              value: _countryItem,
                              onChanged: (String? value) => setState(() {
                                _countryItem = value ?? "";
                              }),
                            )
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );  
  }

}

