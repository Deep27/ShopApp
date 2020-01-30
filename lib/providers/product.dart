import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String _id;
  final String _title;
  final String _description;
  final double _price;
  final String _imageUrl;
  bool isFavorite;

  get id => _id;
  get title => _title;
  get description => _description;
  get price => _price;
  get imageUrl => _imageUrl;

  Product(
      {@required id,
      @required title,
      @required description,
      @required price,
      @required imageUrl,
      isFavorite = false})
      : _id = id,
        _title = title,
        _description = description,
        _price = price,
        _imageUrl = imageUrl,
        this.isFavorite = isFavorite;

  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
