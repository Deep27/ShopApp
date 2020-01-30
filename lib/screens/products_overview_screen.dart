import 'package:flutter/material.dart'; 

import 'package:shop_app/main.dart';

import 'package:shop_app/widgets/product/products_grid_widget.dart';

class ProductsOverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(appName)),
      body: ProductsGridWidget(),
    );
  }
}
