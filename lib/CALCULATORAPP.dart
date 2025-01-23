
import 'package:flutter/material.dart';

void main () {
  runApp(CalculatorApp());
}
class CalculatorApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false, 
     home: CalculatorScreen(),
    );

    
  }
}
class CalculatorScreen extends StatefulWidget{
 @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

   class _CalculatorScreenState extends State<CalculatorScreen> {
    String _currentInput = "0"; //what the user is typing
    String _previousInput = ""; //To store the value before an operation
    String _operation = ""; //the current operation(+,-,*,/)
     Widget buildButton(String value) {
   return Expanded(child: ElevatedButton(onPressed: () {
    setState(() {
      //Handle number input
    if (value=="0"||value=="1"||value=="2"||value=="3"||value=="4"||value=="5"||value=="6"||value=="7"||value=="8"
      ||value=="9"){
        if (_currentInput=="0"){
          _currentInput=value;//replace 0 with the first number
        }else{
          _currentInput=_currentInput+value;//Append the number
        }
      }
      //Handle operation
      if(value=="+"||value=="-"||value=="")
    });
    
   },
   style: ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    )
   ),
    child: Text(
      value,
      style: TextStyle(fontSize: 40),
    ),
   )
   );
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULATOR",
        style: TextStyle(
          color: Colors.lightGreenAccent,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
        ),
         centerTitle: true,
        
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 24),
            color: Colors.black,
            child: Text("0",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            ),
          ),
          ),
          Column(
            children: [
              Row(
                children: [
                  buildButton("7"),
                  buildButton("8"),
                  buildButton("9"),
                  buildButton("/"),
                ],
              ),
              Row(
                children: [
                  buildButton("6"),
                  buildButton("5"),
                  buildButton("4"),
                  buildButton("*"),
                ],
              ),
              Row(
                children: [
                  buildButton("1"),
                  buildButton("2"),
                  buildButton("3"),
                  buildButton("+"),

                ],
              ),
              Row(
                children: [
                  buildButton("="),
                  buildButton("0"),
                  buildButton("C"),
                  buildButton("."),
                ],
              )
            ],
          )
        ],
      ),
    );
    
  }

   }
  