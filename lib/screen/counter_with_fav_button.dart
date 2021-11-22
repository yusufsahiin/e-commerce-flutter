import 'package:flutter/material.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CardCounter(),
        Container(
          padding: EdgeInsets.all(2),
          height: 32,
          width: 32,
          decoration:
              // ignore: prefer_const_constructors
              BoxDecoration(color: Color(0xFFFF6464), shape: BoxShape.circle),
          // ignore: prefer_const_constructors
          child: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
