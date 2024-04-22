import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Assignment-1"),
          centerTitle: true,
          backgroundColor: Colors.grey,
          ),
          body:
          Padding(
            padding: const EdgeInsets.all(38.0),
            child: Column(
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      color: Colors.red,
                    ),
                    
                  ],
                  ),
                  const SizedBox(
                      height: 100,
                    ),
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.purple,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                )

              ],
            ),
              ]
          ),
          ),
      )  
          
      );
    
  }
}
