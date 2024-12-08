import 'package:flutter/material.dart';
import 'package:food_app/controller/counter_provider.dart';
import 'package:food_app/controller/item_add_provider.dart';
import 'package:food_app/controller/meal_type_provider.dart';
import 'package:food_app/views/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> MealTypeIndexProvider()),
        ChangeNotifierProvider(create: (_)=> ButtonStateProvider()),
        ChangeNotifierProvider(create: (_)=> CounterProvider())
      ],
      child: const MaterialApp(
       debugShowCheckedModeBanner: false,
        home: HomeScreen()
      ),
    );
  }
}
