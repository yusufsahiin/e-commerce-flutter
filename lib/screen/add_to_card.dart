import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/model/product.dart';

class AddToCard extends StatelessWidget {
  final Product product;
  const AddToCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonstyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black,
      primary: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: defaultPadding),
            //Üst kısımda miktar ayarladığımız butonlarla arasına düzgün bir mesafe konuldu
            height: 50,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: product.color),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.blue.shade500,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: raisedButtonstyle,
                onPressed: () {},
                child: Text(
                  "SATIN AL".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
