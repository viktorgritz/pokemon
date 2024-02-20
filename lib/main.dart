import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pokemon/features/search/presentation/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          primaryColor: HexColor('#F5DB13'),
          searchBarTheme: SearchBarThemeData(
            surfaceTintColor: MaterialStateProperty.all(Colors.grey),
          )
          //primaryColor: Color(0xF5DB13)
          ),
      home: const SearchScreen(),
    );
  }
}
