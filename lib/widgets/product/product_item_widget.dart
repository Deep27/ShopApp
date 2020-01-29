import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class ProductItemWidget extends StatelessWidget {
  final Product _product;

  ProductItemWidget(this._product);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        _product.imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        leading: IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {},
        ),
        backgroundColor: Colors.black54,
        title: Text(
          _product.title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ),
    );
  }
}
