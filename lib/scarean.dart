
import 'package:flutter/material.dart';
import 'package:weather/model.dart';


// ignore: must_be_immutable
class APIScreen extends StatelessWidget {
  final WeatherModel weatherModel;
  APIScreen({required this.weatherModel});
 late APIScreen aPIScreen ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(



backgroundColor:  Color.fromARGB(255, 246, 244, 243),
body:

 Container(
  height: double.infinity,
  width: double.infinity,
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.center,
  
    children: [
  
  Text("${weatherModel.city_name}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
  SizedBox(height: 20,),
  Text("updated at ${weatherModel.last_date}",style: TextStyle(fontSize: 30,),),
  
  SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(children: [
  Padding(
    padding: const EdgeInsets.all(8.0),
    child:   Image.network("https:${weatherModel.image}",height: 80,),
  ),
  SizedBox(width: 5,),
  Text("${weatherModel.temp}°C",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
  SizedBox(width: 10,),
  Column(
    children: [
      Text("Maxtemp:${weatherModel.max_temp} °C",style: TextStyle(fontSize: 20,),),
          Text("Mintemp: ${weatherModel.min_temp}°C",style: TextStyle(fontSize: 20,),)
  
    ],
  )
  
    ],),
  ),
  SizedBox(height: 40,),
  
  Text("${weatherModel.weather_condition}",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
  
    ],
  
  ),
),
    ),
);






    
  }
}