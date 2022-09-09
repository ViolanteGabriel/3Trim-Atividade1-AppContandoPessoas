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

 // FUNCAO CHANGE LA

  @override
    Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "Students: 0",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Padding(padding: EdgeInsets.all(9.0),
              child: TextButton(
                onPressed: () {},
                child: const Text("+", style: TextStyle(fontSize: 40, color: Colors.green),),
              ),
            ),

            Padding(padding: EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () {},
                child: const Text("-", style: TextStyle(fontSize: 40, color: Colors.red),),
              ),
            )
          ],
        ),
      ],
    );
  }
}