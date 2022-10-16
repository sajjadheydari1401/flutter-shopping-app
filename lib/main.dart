import 'package:flutter/material.dart';

import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme =
        ThemeData(fontFamily: 'Lato', primarySwatch: Colors.purple);
    return MaterialApp(
        title: 'MyShop',
        theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            secondary: Colors.deepOrange,
          ),
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        });
  }
}
