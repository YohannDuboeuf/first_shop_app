import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String c_id;
  final String c_title;
  final String c_imgUrl;

  ProductItem(this.c_id, this.c_title, this.c_imgUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        c_imgUrl,
        fit: BoxFit.cover,
        height: 350,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        title: Text(
          c_title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ),
    );
  }
}
