import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Counting Students",
    home: Home(),
  ));
}

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{
  int n_students = 0;

  void _change(int delta){
    setState(() {
      n_students += delta;
    });
  }

  String _changeLabState(int n_students){
    if (n_students >= 36) { return "LAB TA CHEIO!";}
    else if (n_students <= 0) { return "LAB TA VAZIO"; }
    else { return "Lab ta OK";}
  }

  @override
    Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Students: $n_students",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Padding(padding: EdgeInsets.all(9.0),
              child: TextButton(
                onPressed: () {
                  _change(1);
                },
                child: Text("+", style: TextStyle(fontSize: 40, color: Colors.green),),
              ),
            ),

            Padding(padding: EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () {
                  _change(-1);
                },
                child: Text("-", style: TextStyle(fontSize: 40, color: Colors.red),),
              ),
            )
          ],
        ),

        Text(
          _changeLabState(n_students),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}