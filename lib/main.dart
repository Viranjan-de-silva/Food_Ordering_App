import 'package:flutter/material.dart';
import 'table_page.dart';

void main() => runApp(FoodOrderingApp());

class FoodOrderingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TablePage(),
    );
  }
}
