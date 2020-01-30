import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/widgets/product/product_item_widget.dart';

class ProductsGridWidget extends StatelessWidget {
  final bool _showFavs;

  ProductsGridWidget(this._showFavs);

  @override
  Widget build(BuildContext context) {
    final _productsData = Provider.of<Products>(context);
    final _products =
        _showFavs ? _productsData.favoriteItems : _productsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: _products[i],
        child: ProductItemWidget(),
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