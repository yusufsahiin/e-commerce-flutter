import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: nishAppBar(),
      body: Body(),
    );
  }

  AppBar nishAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.blue[100],
        ),
        onPressed: () {},
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
            Icons.star_border,
            color: Colors.red[300],
            size: 25.0,
          ),
        ),
      ],
    );
  }
}
