import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        
        appBar: AppBar(
          centerTitle: true,
          title: Text('Basic Screen'),
        ),
        body: Center(
          child: Column(
           
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              CustomBox(displayText: "Merhaba, Flutter", boxColor: Colors.teal),
              CustomBox(displayText: "Hello, Flutter", boxColor: Colors.amber),
              

            ],
          ),
        ),
      ),
    );
  }
}

class CustomBox extends StatelessWidget{
  final String displayText;
  final Color boxColor;
  CustomBox( {required this.displayText, required this.boxColor});
  @override
  Widget build(BuildContext context) {
     return Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
               
                child: Center(
                    child: Text(
                  displayText,
                  style: TextStyle(fontSize: 24.0),
                ),),
              );
  }

}
