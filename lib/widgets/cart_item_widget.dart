import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';

class CartItemWidget extends StatelessWidget {
  final String _productId;
  final String _id;
  final double _price;
  final int _quantity;
  final String _title;

  CartItemWidget(
      {@required String productId,
      @required String id,
      @required double price,
      @required int quantity,
      @required String title})
      : _productId = productId,
        _id = id,
        _price = price,
        _quantity = quantity,
        _title = title;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(_id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Theme.of(context).errorColor,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      ),
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(_productId);
      },
      confirmDismiss: (direction) {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to remove the item?'),
            actions: <Widget>[
              FlatButton(
                child: const Text('No'),
                onPressed: () => Navigator.of(context).pop(false),
              ),
              FlatButton(
                child: const Text('Yes'),
                onPressed: () => Navigator.of(context).pop(true),
              ),
            ],
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListTile(
            leading: CircleAvatar(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: FittedBox(child: Text('\$$_price')),
              ),
            ),
            title: Text(_title),
            subtitle: Text('Total: \$${_price * _quantity}'),
            trailing: Text('$_quantity x'),
          ),
        ),
      ),
    );
  }
}
