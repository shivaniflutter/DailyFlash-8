import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

   final List<Item> itemlist=[
    Item(
    title: "Safari", 
    discription:"Experience the web with Safari, a fast and efficient browser by Apple.",
    icon: FontAwesomeIcons.safari,
    ),
    Item(
    title: "AddressCard",
    discription:"Store and manage your contact information with ease using Address Card.",
    icon:FontAwesomeIcons.addressCard
    ),
    Item(
    title: "Amazonpay",
    discription: "Description for Amazon Pay icon goes here.",
    icon:FontAwesomeIcons.amazonPay
    ),
    Item(
    title: "Satellite",
    discription: "The satellite icon symbolizes our reach into space, enabling communication, navigation, and scientific exploration from orbit",
    icon:FontAwesomeIcons.satellite
    ),
    Item(
    title: "book",
    discription: "The book icon typically symbolizes knowledge, learning, and education, representing the power of reading and the accumulation of information.",
    icon:FontAwesomeIcons.book
    ),
    Item(
    title: "Calender",
    discription: "The calendar icon in Flutter is often used to signify events, appointments, schedules, and time-related information",
    icon:FontAwesomeIcons.calendar
    ),
    Item(
    title: "Calculator",
    discription:"The calculator icon serves as a visual representation of mathematical calculations",
    icon:FontAwesomeIcons.calculator
    ),
    Item(
    title: "BatteryFull",
    discription: "This indicates that a device has a fully charged battery,",
    icon:FontAwesomeIcons.batteryFull
    ),
    Item(
    title: "Desktop",
    discription: "The desktop icon in Flutter often represents a desktop computer or a computer interface, used to symbolize desktop applications,",
    icon:FontAwesomeIcons.desktop,
    ),
    Item(
    title: "addresscard",
    discription: "forge meaningful connection with our vibrant community",
    icon:FontAwesomeIcons.addressCard
    )
   ];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: const Text("Assignment-5"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body:ListView.builder(
        itemCount: itemlist.length,
        itemBuilder: (BuildContext context, index){
        return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        ),
        padding:const  EdgeInsets.all(12),
        child:  Row(
         crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Expanded(child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemlist [index].title,
                style: const TextStyle(
                  fontSize:16,
                  fontWeight: FontWeight.bold,
                ) ,
              ),
             const SizedBox(
                height: 8,
              ),
            Text(
              itemlist[index].discription,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            )
            ],
          )
          ),
          const SizedBox(
            width:10 ,
          ),
          Container(
            decoration: const BoxDecoration(
            shape: BoxShape.circle
            ),
            padding: const EdgeInsets.all(25),
            child: Icon(
            itemlist[index].icon,
            color: Colors.blue,
            ),
            
          )
        ]
        )
        
        )
        
        );
        }
        
        )
      )
        );
        }
    
      
      
        }
      
  

class Item{
  final String title;
  final String discription;
  final IconData icon;
  
Item({
  required this.title,
  required this.discription,
  required this.icon,

  });
}