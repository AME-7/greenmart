import 'package:flutter/material.dart';
import 'package:greenmart/features/home/data/product_model.dart';

class CartItem extends StatelessWidget {
  final ProductModel product;

  const CartItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(product.image, width: 90, height: 90),
            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product.weight,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            Text(
              "\$${product.price}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(Icons.chevron_right),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
