import 'package:flutter/material.dart';

import 'package:shop_app/data/products.dart';
import 'package:shop_app/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = dummyProducts;
  // bool _showFavoritesOnly = false;

  // List<Product> get items => _showFavoritesOnly
  //     ? _items.where((item) => item.isFavorite).toList() // new list
  //     : [...items];

  List<Product> get items => [..._items];
  List<Product> get favoriteItems =>
      _items.where((item) => item.isFavorite).toList();

  Product findById(String id) => _items.firstWhere((p) => p.id == id);

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
