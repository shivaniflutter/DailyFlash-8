import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Assignment 3"),
            centerTitle: true,
            backgroundColor: Colors.indigo,
          ),
          body: 
          Center(
            child: Row( 
              children: [
              const SizedBox(
                width: 300,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius:const  BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                   border: Border.all(
                    color: Colors.black,
                   )
                  )
                ),
            
              
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                borderRadius:const BorderRadius.all(Radius.zero),
                border: Border.all(
                  color: Colors.black
                )
                ),
                
               ),
              
              Container(
                height:200 ,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius:const  BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  border: Border.all(
                    color: Colors.black,
                  ),
            
                ),
              )
            ]),
          ),
        ),
        );

  }
}
