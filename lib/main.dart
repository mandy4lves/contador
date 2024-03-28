
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Contador(),
    )
  );
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  int contador = 0;

  void inclement() {
    setState(() {
      if(contador <30){
        contador++;
      }
      
    });
    
    
  }
  void declement() {
    setState(() {
      if(contador >0){
        contador--;
      }
      
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: Color.fromARGB(255, 233, 160, 160),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('asset/restaurant.png'),
            fit: BoxFit.cover)
          ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Text(contador<30?"Pode entrar!":"Casa cheia",style: TextStyle(
            fontSize: 30.0,
            color: Color.fromARGB(255, 239, 238, 243)
          ),),
          Text(contador.toString(),style: TextStyle(
            fontSize: 30.0,
            color: Color.fromARGB(255, 242, 242, 245)
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: inclement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100, 100),
                  animationDuration: Duration(seconds: 3000),
                  foregroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),
                                                        topLeft: Radius.circular(20),topRight: Radius.circular(20))
                  )
                ),
                child: Text(
                  "Entrar",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                )
              ),
              SizedBox(width: 80),
              TextButton(
                onPressed: declement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100, 100),
                  animationDuration: Duration(seconds: 2000),
                  foregroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: Text(
                  "Sair",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                )
              )
            ],
          )
        ],
      ),
      ),
    ),
    title: "Contador 2.0",
    debugShowCheckedModeBanner: false,
    );
  }
  
  

  
}