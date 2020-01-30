import 'package:flutter/material.dart';
import 'package:shop_app/data/products.dart';
import 'package:shop_app/models/product.dart';

class ProductsProvider with ChangeNotifier {

  List<Product> _items = dummyProducts;

  List<Product> get items => [..._items];

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}