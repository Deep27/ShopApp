import 'package:flutter/material.dart';
import 'package:shop_app/data/products.dart';
import 'package:shop_app/providers/product.dart';

class Products with ChangeNotifier {

  List<Product> _items = dummyProducts;

  List<Product> get items => [..._items];

  Product findById(String id) => _items.firstWhere((p) => p.id == id);

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}