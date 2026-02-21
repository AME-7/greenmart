import 'package:flutter/material.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/features/home/widget/prouduct_row.dart';

class CartItem extends StatelessWidget {
  final ProductModel model;
  const CartItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductRow(model: model, showQuantity: true, showRemoveIcon: true),
        const Divider(height: 30),
      ],
    );
  }
}
