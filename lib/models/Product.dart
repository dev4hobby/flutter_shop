import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product(
      {this.id,
      this.image,
      this.title,
      this.price,
      this.description,
      this.size,
      this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Dolce Latte",
      price: 7000,
      size: 12,
      description: dummyText,
      image: "assets/images/item_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "BR, Block Pack",
      price: 12000,
      size: 12,
      description: dummyText,
      image: "assets/images/item_2.png",
      color: Color(0x3D8FF2AE)),
  Product(
      id: 3,
      title: "Choco Pie",
      price: 4500,
      size: 12,
      description: dummyText,
      image: "assets/images/item_3.png",
      color: Color(0xFFAE3D82)),
  Product(
      id: 4,
      title: "Hometown Dumpling",
      price: 6800,
      size: 12,
      description: dummyText,
      image: "assets/images/item_4.png",
      color: Color(0xFF2AE3D8)),
  Product(
      id: 5,
      title: "Nyam Nyam Good",
      price: 6000,
      size: 12,
      description: dummyText,
      image: "assets/images/item_5.png",
      color: Color(0x82AEFF3D)),
  Product(
      id: 6,
      title: "무궁화를 우렸다고..?",
      price: 6500,
      size: 12,
      description: dummyText,
      image: "assets/images/item_6.png",
      color: Color(0x2AEFF3D8)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.";
