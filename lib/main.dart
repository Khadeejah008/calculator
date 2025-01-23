
import 'package:flutter/material.dart';

void main() {
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
class CalculatorScreen extends StatelessWidget{
  Widget buildButton(String value){
    return Expanded(child: ElevatedButton(onPressed: (){}, 
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
    ),
    child: Text(
      value,
      style: TextStyle(fontSize: 40),
    )
    )
    );
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("CALCULATOR",
      style: TextStyle(
        color: Colors.cyan,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic),
       
      ),
      centerTitle: true,
    ),
    body: Column(
      children: [
        Expanded(child: Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
          color: Colors.black,
          child: Text("0",
          style: TextStyle(
           fontSize: 48,
           fontWeight: FontWeight.bold,
           color: Colors.white 
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
                buildButton("4"),
                buildButton("5"),
                buildButton("6"),
                buildButton("*"),
              ],
            ),
            Row(
              children: [
                buildButton("1"),
                buildButton("2"),
                buildButton("3"),
                buildButton("-"),
              ],
            ),
            Row(
              children: [
                buildButton("C"),
                buildButton("0"),
                buildButton("="),
                buildButton("+"),
                buildButton("."),
              ],
            )
          ],
        )
      ] ),
   );
    
  }
}
