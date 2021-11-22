import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  List<String> categories = [
    "Asus",
    "Lenovo",
    "Monster",
    "Apple",
    "HP",
    "Huawei",
  ];

  int selectedIndex = 0;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          itemBuilder: (context, index) => nishCategory(index),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
        ),
      ),
    );
  }

  Widget nishCategory(int index) {
    return GestureDetector(
      //Widgetlara dokunmamızı sağlıyor
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? textColor : textLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: defaultPadding / 4),
              height: 2,
              width: 30,
              color:
                  selectedIndex == index ? Colors.red[300] : Colors.deepOrangeAccent[100],
            )
          ],
        ),
      ),
    );
  }
}
