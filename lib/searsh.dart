import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/icon_searsh.dart';
import 'package:weather/manager/cubit/api_cubit.dart';
import 'package:weather/scarean.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 154, 60, 9),
        actions: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => widget(),
                    ));
              },
              child: Icon(
                Icons.search,
                size: 40,
              ),
              backgroundColor: Color(0xff9a3d00),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 246, 244, 243),
      body: Center(child: BlocBuilder<ApiCubit, ApiState>(
        builder: (context, state) {
          if(state is ApiInitial)
          return Text(
            "NO Weather here😔🔍 ",
            style: TextStyle(fontSize: 30, color: Colors.black),
          );
          else if(state is loding)
          return APIScreen( weatherModel: state.W,);
          else  return Text(
            "NO Weather here😔🔍 ",);
        },
      )),
    );
  }
}
