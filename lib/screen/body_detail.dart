import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/model/product.dart';
import 'package:flutter_application_1/screen/product_title_with_image.dart';

import 'add_to_card.dart';
import 'color_and_size.dart';
import 'counter_with_fav_button.dart';
import 'description.dart';

class BodyDetail extends StatelessWidget {
  final Product product;

  const BodyDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.30),
                    padding: EdgeInsets.only(
                        top: size.height * 0.05,
                        left: defaultPadding,
                        right: defaultPadding),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        SizedBox(
                          height: defaultPadding / 2,
                        ),
                        Description(product: product),
                        SizedBox(
                          height: defaultPadding / 2,
                        ),
                        CounterWithFavBtn(),
                        SizedBox(
                          height: defaultPadding / 2,
                        ),
                        AddToCard(product: product),
                      ],
                    ),
                  ),
                  ProductTitleWithImage(product: product),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
