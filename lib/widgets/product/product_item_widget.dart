import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_detail_screen.dart';

class ProductItemWidget extends StatelessWidget {
  final String _id;
  final String _title;
  final String _imageUrl;

  ProductItemWidget({@required id, @required title, @required imageUrl})
      : _id = id,
        _title = title,
        _imageUrl = imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(
          ProductDetailScreen.routeName,
          arguments: _id,
        ),
        child: GridTile(
          child: Image.network(
            _imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            leading: IconButton(
              icon: const Icon(Icons.favorite),
              color: Theme.of(context).accentColor,
              onPressed: () {},
            ),
            backgroundColor: Colors.black87,
            title: Text(
              _title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: const Icon(Icons.shopping_cart),
              color: Theme.of(context).accentColor,
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
