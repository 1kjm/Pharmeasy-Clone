import 'package:flutter/material.dart';

class ProductModel {
  final String image, title, description;
  final int size, id;
  final double price;
  final Color color;
  ProductModel({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<ProductModel> products = [
  ProductModel(
      id: 1,
      title: "Zincovit",
      price: 105,
      description: dummyText,
      image: "assets/productsImg/zincovit.jpg",
      color: Color(0xFF3D82AE)),
  ProductModel(
      id: 2,
      title: "Celin-500",
      price: 38.36,
      description: dummyText,
      image: "assets/productsImg/celin.jpg",
      color: Color(0xFFD3A984)),
  ProductModel(
      id: 3,
      title: "Betadine",
      price: 109,
      size: 10,
      description: dummyText,
      image: "assets/productsImg/betadine.jpg",
      color: Color(0xFF989493)),
  ProductModel(
      id: 4,
      title: "Cough Syrup",
      price: 84,
      description: dummyText,
      image: "assets/productsImg/Cough.jpg",
      color: Color(0xFFE6B398)),
  ProductModel(
      id: 5,
      title: "Amoxicillin 500",
      price: 14,
      description: dummyText,
      image: "assets/productsImg/amoxcilin.png",
      color: Color(0xFFFB7883)),
  ProductModel(
    id: 6,
    title: "Omez 20",
    price: 54.21,
    description: dummyText,
    image: "assets/productsImg/omez.jpg",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
