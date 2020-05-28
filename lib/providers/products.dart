import 'package:flutter/material.dart';
import 'package:shop_app/data/products.dart';
import 'package:shop_app/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = products;

  List<Product> get items => [..._items];

  void addProduct(Product p) {
    _items.add(p);
    notifyListeners();
  }

  Product findById(String id) => _items.firstWhere((item) => item.id == id);
}
