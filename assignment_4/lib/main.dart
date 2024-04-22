import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final List<String> itemnames = [
    "Virat",
    "Rohit",
    "Shreyas",
    "Sachin",
    "Ajinkya",
    "Shami",
    "Siraj",
    "Shubhman",
    "Surya",
    "Jadeja"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Assignment-4"),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body:
         ListView.builder(
            itemCount: itemnames.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(20),
                  child: Container(
                              decoration: BoxDecoration(
                              border: Border.all(
                              color: Colors.black,
                              )),
                              padding:const EdgeInsets.all(12),
                              child:                         
                              Row(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Container(
                                 padding: const EdgeInsets.all(45),
                                  decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                   color: Colors.black
                                    ),
                                  image: DecorationImage(
                                        image: AssetImage(
                                        'assets/image${index + 1}.jpg'),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              
                              
                               const SizedBox(
                                width: 30,
                               ),
                               
                               Container(
                                padding: const EdgeInsets.all(25),
                                child: 
                               Text(
                                itemnames[index],
                                style:const TextStyle(
                                fontSize:20,
                                fontWeight:FontWeight.bold,
                                ),
                               )
                               )
                                ],
                        
                                )
                          )
                          );
            } 
                              )
                              )
                        
                      );
            }
                      
                      
    
            }
      
    


