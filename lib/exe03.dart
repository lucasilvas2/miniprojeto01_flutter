import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter Tutorial',
      home: myBody(),
    ),
  );
}

class myBody extends StatelessWidget {
  const myBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('IMC'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: Imc(),
    );
  }
}

class Imc extends StatefulWidget {
  @override
  State<Imc> createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  double _result = 0.0;
  Color _status = Colors.white;

  void _calculate(){
    double height = double.parse(_heightController.text);
    double weight = double.parse(_weightController.text); 
    double imc;
    Color status;
    if(height < 0 && weight < 0){
      return;
    }

    imc =  (weight / pow(height, 2));
    String imcF= imc.toStringAsFixed(2);

    if (imc < 18.5){
      status = Colors.blue;
    }else if (imc >= 18.5 && imc < 25){
      status = Colors.green;
    }else if (imc >= 25 && imc < 30){
      status = Colors.yellow;
    }else if (imc >= 30 && imc < 35){
      status = Colors.yellowAccent;
    }else if (imc >= 35 && imc < 40){
      status = Colors.orange;
    }else{
      status = Colors.red;
    }

    setState(() {
      _result = double.parse(imcF);
      _status = status;
    });
  
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text('Height:'),
          TextField(
            controller: _heightController,
            decoration: const InputDecoration(
              labelText: 'meters',
              helperText: 'Ex.: 1.74'
            ), 
            keyboardType: TextInputType.number,
          ),
          const Text('Weight:'),
          TextField(
            controller: _weightController,
            decoration: const InputDecoration(
              labelText: 'kilogram',
              helperText: 'Ex.: 80.00'          
            ),
            keyboardType: TextInputType.number,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: _calculate,
              child: const Text('Calculate'),
            ),
          ),
          Center(
            child: Container(
              color: _status,
              child: Text(
                'IMC: $_result',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),

              ),
            )
          )
        ],
      ),
    );
  }
}
