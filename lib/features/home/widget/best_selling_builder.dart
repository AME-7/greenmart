import 'package:flutter/material.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/features/home/widget/item_card.dart';

class BestSellingBuilder extends StatelessWidget {
  final List<ProductModel> products;
  const BestSellingBuilder({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [Text('Best Selling'), Text('See All')],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 255,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ItemCard(model: products[index]),
            separatorBuilder: (_, _) => const SizedBox(width: 10),
            itemCount: products.length,
          ),
        ),
      ],
    );
  }
}
