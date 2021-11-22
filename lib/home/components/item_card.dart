import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/model/product.dart';

class ItemCard extends StatelessWidget {
  final Function press;
  final Product product;

  const ItemCard({Key? key, required this.press, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(
                  product.image,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding / 4),
            child: Text(
              product.title,
              style: TextStyle(color: Colors.deepPurpleAccent[300]),
            ),
          ),
          Text(
            "${product.price}TL",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
