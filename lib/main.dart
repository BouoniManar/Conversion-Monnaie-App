import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ConvertMoney());
}

class ConvertMoney extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Convert(),
      );
      
    
  }
}

class Convert extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainWidget();

}

class MainWidget extends State<Convert>{
  String _selectedConversion = "EuroToDinar";

 TextEditingController _controller = TextEditingController();
  double _resultat = 0.0;

}


@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("TP1 App"),
      backgroundColor: Colors.purple,
    ),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: MainWidget,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Montant",
              ),
            )
          ],
        ),
      ),),
  );
}