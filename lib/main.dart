import 'package:flutter/material.dart';

import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        fontFamily: 'Lato',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
            .copyWith(secondary: Colors.yellow),
      ),
      home: ProductOverviewScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ProductOverviewScreen(),
        ProductDetailScreen.routeName: ((context) => ProductDetailScreen()),
        ProductOverviewScreen.routeName: ((context) => ProductOverviewScreen()),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => ProductOverviewScreen(),
        );
      },
    );
  }
}
