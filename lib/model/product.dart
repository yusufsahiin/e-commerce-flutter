import 'package:flutter/cupertino.dart';

class Product {
  final String image, title, description;
  final price, size, id;
  final Color color;

  Product({
    required this.color,
    required this.description,
    required this.id,
    required this.image,
    required this.price,
    required this.size,
    required this.title,
  });
}

List<Product> products = [
  Product(
    color: Color(0xFFFFCDD2),
    description: dumyText,
    id: 1,
    image: "assets/images/asus2.png",
    price: 7000,
    size: 34,
    title: "ASUS Zenbook",
  ),
  Product(
      color: Color(0xFFFFCDD2),
      description: dumyText,
      id: 2,
      image: "assets/images/acer.png",
      price: 8000,
      size: 35,
      title: "ACER"),
  Product(
      color: Color(0xFFFFCDD2),
      description: dumyText,
      id: 3,
      image: "assets/images/lenovo2.png",
      price: 6500,
      size: 31,
      title: "Lenovo"),
  Product(
      color: Color(0xFFFFCDD2),
      description: dumyText,
      id: 1,
      image: "assets/images/samsung.png",
      price: 7500,
      size: 32,
      title: "Samsung"),
  Product(
      color: Color(0xFFFFCDD2),
      description: dumyText,
      id: 1,
      image: "assets/images/dell.png",
      price: 9000,
      size: 36,
      title: "Dell"),
  Product(
      color: Color(0xFFBBDEFB),
      description: dumyText,
      id: 1,
      image: "assets/images/huawei.png",
      price: 7900,
      size: 32,
      title: "Huawei"),
];
String dumyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ";
