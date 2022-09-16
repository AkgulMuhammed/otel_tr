import 'package:flutter/material.dart';
import 'package:otelcim/Hotel/view/hotel_home_page.dart';
import 'Hotel/view/hotel_start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      debugShowCheckedModeBanner: false,
      home: const HotelStartPage(),
    );
  }
}
