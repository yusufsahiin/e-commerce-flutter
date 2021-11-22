import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

class CardCounter extends StatefulWidget {
  const CardCounter({Key? key}) : super(key: key);

  @override
  _CardCounterState createState() => _CardCounterState();
}

class _CardCounterState extends State<CardCounter> {
  int numOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        outLineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItem > 1) {
              setState(
                () {
                  numOfItem--;
                },
              );
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding/4),
          child: Text(
            numOfItem.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        //padleft ile 01, 02 şeklinde yazdırdık
        outLineButton(
          press: () {
            setState(
              () {
                numOfItem++;
              },
            );
          },
          icon: Icons.add,
        )
      ],
    );
  }

  SizedBox outLineButton({required Function press, IconData? icon}) {
    return SizedBox(
      width: 50,
      height: 50,
      child: OutlinedButton(
        onPressed: () {
          press();
        },
        child: Icon(icon),
      ),
    );
  }
}
