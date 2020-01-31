import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  final String _id;
  final double _price;
  final int _quantity;
  final String _title;

  CartItemWidget(
      {@required String id,
      @required double price,
      @required int quantity,
      @required String title})
      : _id = id,
        _price = price,
        _quantity = quantity,
        _title = title;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
