import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter UI Layout Example',
home: Scaffold(
appBar: AppBar(
title: Text('UI Layout: Text, Container, Row, Column'),
),
body: LayoutExample(),
),
);
}
}

class LayoutExample extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
// Text Widget Example
Text(
'This is a Text Widget',
style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
),
SizedBox(height: 10), // Spacer between widgets

// Container Widget Example
Container(
width: double.infinity,
height: 100,
color: Colors.blue,
alignment: Alignment.center,
child: Text(
'This is a Container Widget',
style: TextStyle(fontSize: 18, color: Colors.white),
),
),
SizedBox(height: 10),

// Row Widget Example
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Container(
width: 50,
height: 50,
color: Colors.red,
child: Center(child: Text('1')),
),
Container(
width: 50,
height: 50,
color: Colors.green,
child: Center(child: Text('2')),
),
Container(
width: 50,
height: 50,
color: Colors.orange,
child: Center(child: Text('3')),
),
],
),
SizedBox(height: 10),

// Column Widget Example
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
width: 150,
height: 50,
color: Colors.purple,
child: Center(child: Text('Column Item 1')),
),
SizedBox(height: 5),
Container(
width: 150,
height: 50,
color: Colors.teal,
child: Center(child: Text('Column Item 2')),
),
],
),
],
),
);
}
}