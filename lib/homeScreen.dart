import 'package:flutter/material.dart';
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Map<String,dynamic>> list=
  [

    {

      "city": "New York",

      "temperature": 20,

      "condition": "Clear",

      "humidity": 60,

      "windSpeed": 5.5

    },

    {

      "city": "Los Angeles",

      "temperature": 25,

      "condition": "Sunny",

      "humidity": 50,

      "windSpeed": 6.8

    },

    {

      "city": "London",

      "temperature": 15,

      "condition": "Partly Cloudy",

      "humidity": 70,

      "windSpeed": 4.2

    },

    {

      "city": "Tokyo",

      "temperature": 28,

      "condition": "Rainy",

      "humidity": 75,

      "windSpeed": 8.0

    },

    {

      "city": "Sydney",

      "temperature": 22,

      "condition": "Cloudy",

      "humidity": 55,

      "windSpeed": 7.3

    }

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title: const Text('Weather Info App'),
       ),
      body: ListView.builder(
        itemCount: list.length,
          itemBuilder: (context,index){
        return Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,top: 10,bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('City: ${list[index]['city']}',style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                Text('Temperature: ${list[index]['temperature']}°C',style: const TextStyle(color: Colors.grey,fontSize: 16),),
                Text('Condition: ${list[index]['condition']}',style: const TextStyle(color: Colors.grey,fontSize: 16)),
                Text('Humidity: ${list[index]['humidity']}%',style: const TextStyle(color: Colors.grey,fontSize: 16)),
                Text('Wind Speed: ${list[index]['windSpeed']} m/s',style: const TextStyle(color: Colors.grey,fontSize: 16)),




              ],

            ),
          ),
        );
      }),
    );
  }
}
