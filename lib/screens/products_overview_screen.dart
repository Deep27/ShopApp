import 'package:flutter/material.dart';
import 'package:shop_app/data/products.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].imageUrl,
        ),
      ),
    );
  }
}
