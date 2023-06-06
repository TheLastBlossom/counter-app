import 'package:counter_app_1/screens/counter_screen.dart';
import 'package:counter_app_1/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Center(
      // child: HomeScreen(),
      child: CounterScreen(),
    ),
  );
  }
}