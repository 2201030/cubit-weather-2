import 'package:flutter/material.dart';
import 'package:weather/manager/cubit/api_cubit.dart';
import 'package:weather/searsh.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ApiCubit(),
      child: MaterialApp(
        home: MyWidget(),
      ),
    ); 
  }
}
