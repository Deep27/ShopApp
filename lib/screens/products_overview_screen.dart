import 'package:flutter/material.dart';
import 'package:shop_app/data/products.dart';
import 'package:shop_app/main.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/product/product_item_widget.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> _loadedProducts = dummyProducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(appName)),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (ctx, index) => ProductItemWidget(_loadedProducts[index]),
        itemCount: _loadedProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
