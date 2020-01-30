import 'package:flutter/material.dart';

import 'package:shop_app/main.dart';

import 'package:shop_app/widgets/product/products_grid_widget.dart';

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  bool _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
        actions: <Widget>[
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (ctx) => [
              PopupMenuItem(
                child: const Text('Only Favorites'),
                value: FilterOptions.showFavorites,
              ),
              PopupMenuItem(
                child: const Text('Show All'),
                value: FilterOptions.showAll,
              ),
            ],
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.showFavorites) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
          ),
        ],
      ),
      body: ProductsGridWidget(_showOnlyFavorites),
    );
  }
}

enum FilterOptions { showFavorites, showAll }
