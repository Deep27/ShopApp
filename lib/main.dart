import 'package:flutter/material.dart';
import 'package:shop_app/screens/products_overview_screen.dart';

void main() => runApp(MyApp());

const appName = 'MyShop';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato',
      ),
      home: ProductsOverviewScreen(),
    );
  }
}
