//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter/rendering.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final List<String> itemname = [
    "Food1",
    "Food2",
    "Food3",
    "Food4",
    "Food5",
    "Food6",
    "Food7",
    "Food8",
    "Food9",
    "Food10"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Assignment-2"),
              centerTitle: true,
              backgroundColor: Colors.grey,
            ),
            body: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    itemname.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 150,
                                height: 100,
                                //padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image${index + 1}.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 50,
                                padding: const EdgeInsets.all(15.0),
                                margin: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Text(
                                  itemname[index],
                                  style: const TextStyle(fontSize: 15),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ))));
  }
}
