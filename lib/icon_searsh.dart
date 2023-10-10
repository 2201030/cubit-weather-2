import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/manager/cubit/api_cubit.dart';
import 'package:weather/model.dart';
import 'package:weather/scarean.dart';

class widget extends StatelessWidget {
String? city_name;
late WeatherModel weatherModelr;
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  title: const Text("Weather App",style: TextStyle(fontSize: 40,color: Colors.black),),
  centerTitle: true,
  backgroundColor: const Color.fromARGB(255, 154, 60, 9),
),

      body: 
      
Padding(
  padding: const EdgeInsets.all(5.0),
  child:   Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
        
        cursorWidth: 4,
        decoration: InputDecoration(
        
        labelText: "City Name",hintStyle: TextStyle(fontSize: 110,
        color: const Color.fromARGB(255, 128, 58, 58)
        ),
        prefix: Padding (
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.location_city,size: 30,),
        ),
        filled: true
        
        ),
        
        
        
         onFieldSubmitted: (value) {
           BlocProvider.of<ApiCubit>(context).getObj(value);
           Navigator.pop(context);
         },
  
         
        
        
        
        
        
        ),
      ],
    ),
  ),
)      ,

      
      );
  
  }
}