import "package:flutter/material.dart";
import 'package:flutter_application_1/model/product.dart';
import 'package:flutter_application_1/screen/body_detail.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: nishAppBar(context),
      backgroundColor: product.color,
      body: BodyDetail(product: product),
    );
  }

  AppBar nishAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.red[300],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.red[300],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.red[300],
          ),
        ),
      ],
    );
  }
}
