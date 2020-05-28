import 'package:flutter/material.dart';
import 'package:shop_app/data/products.dart';
import 'package:shop_app/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = products;

//  bool _showFavoritesOnly = false;

  List<Product> get items {
//    if (_showFavoritesOnly) {
//      return _items.where((item) => item.isFavorite).toList();
//    }
    return [..._items];
  }

  void addProduct(Product p) {
    _items.add(p);
    notifyListeners();
  }

  List<Product> get favoriteItems =>
      _items.where((item) => item.isFavorite).toList();

  Product findById(String id) => _items.firstWhere((item) => item.id == id);

//  void showFavoritesOnly() {
//    _showFavoritesOnly = true;
//    notifyListeners();
//  }
//
//  void showAll() {
//    _showFavoritesOnly = false;
//    notifyListeners();
//  }
}
