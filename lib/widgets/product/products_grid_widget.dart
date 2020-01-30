import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shop_app/providers/products_provider.dart';
import 'package:shop_app/widgets/product/product_item_widget.dart';

class ProductsGridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _productsData = Provider.of<ProductsProvider>(context);
    final _products = _productsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemBuilder: (ctx, i) => ProductItemWidget(
        id: _products[i].id,
        title: _products[i].title,
        imageUrl: _products[i].imageUrl,
      ),
      itemCount: _products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
