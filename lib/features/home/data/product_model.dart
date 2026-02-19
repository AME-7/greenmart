import 'package:flutter/material.dart';

class ProductModel {
  final String id;
  final String name;
  final double price;
  final String weight;
  final String image;
  final String tagkay;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.weight,
    required this.image,
    required this.tagkay,
  });
}

List<ProductModel> offers = [
  ProductModel(
    id: '1',
    name: 'Apple',
    price: 1.99,
    weight: '1.0 kg',
    image: 'assets/images/apple.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '2',
    name: 'Banana',
    price: 0.99,
    weight: '1.0 kg',
    image: 'assets/images/banana.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '3',
    name: 'Orange',
    price: 2.49,
    weight: '1 kg',
    image: 'assets/images/orange.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '4',
    name: 'Capsicum',
    price: 3.99,
    weight: '1 kg',
    image: 'assets/images/capsicum.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '5',
    name: 'Tomato',
    price: 2.99,
    weight: '1 kg',
    image: 'assets/images/tomato.png',
    tagkay: UniqueKey().toString(),
  ),
];

List<ProductModel> bestSelling = [
  ProductModel(
    id: '3',
    name: 'Orange',
    price: 2.49,
    weight: '1 kg',
    image: 'assets/images/orange.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '5',
    name: 'Tomato',
    price: 2.99,
    weight: '1 kg',
    image: 'assets/images/tomato.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '4',
    name: 'Capsicum',
    price: 3.99,
    weight: '1 kg',
    image: 'assets/images/capsicum.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '2',
    name: 'Banana',
    price: 0.99,
    weight: '1.0 kg',
    image: 'assets/images/banana.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '1',
    name: 'Apple',
    price: 1.99,
    weight: '1.0 kg',
    image: 'assets/images/apple.png',
    tagkay: UniqueKey().toString(),
  ),
];

List<ProductModel> allProducts = [
  ProductModel(
    id: '3',
    name: 'Orange',
    price: 2.49,
    weight: '1 kg',
    image: 'assets/images/orange.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '5',
    name: 'Tomato',
    price: 2.99,
    weight: '1 kg',
    image: 'assets/images/tomato.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '4',
    name: 'Capsicum',
    price: 3.99,
    weight: '1 kg',
    image: 'assets/images/capsicum.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '2',
    name: 'Banana',
    price: 0.99,
    weight: '1.0 kg',
    image: 'assets/images/banana.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '1',
    name: 'Apple',
    price: 1.99,
    weight: '1.0 kg',
    image: 'assets/images/apple.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '3',
    name: 'Orange2',
    price: 2.49,
    weight: '1 kg',
    image: 'assets/images/orange.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '5',
    name: 'Tomato2',
    price: 2.99,
    weight: '1 kg',
    image: 'assets/images/tomato.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '4',
    name: 'Capsicum2',
    price: 3.99,
    weight: '1 kg',
    image: 'assets/images/capsicum.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '2',
    name: 'Banana2',
    price: 0.99,
    weight: '1.0 kg',
    image: 'assets/images/banana.png',
    tagkay: UniqueKey().toString(),
  ),
  ProductModel(
    id: '1',
    name: 'Apple2',
    price: 1.99,
    weight: '1.0 kg',
    image: 'assets/images/apple.png',
    tagkay: UniqueKey().toString(),
  ),
];
