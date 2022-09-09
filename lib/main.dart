import 'package:flutter/material.dart';

void addStudent(int delta){
  setState((){
    _alunos += delta;
  });
}

void main()
{
  //Commando to run the appliation
  runApp(MaterialApp( // Widget instance that will be runed
    title: "Couting students", // Internal Use (It's optional)
    home: Column(
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
    ),
  ));

}
