import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/features/home/widget/item_card.dart';

class OffersBuilder extends StatelessWidget {
  const OffersBuilder({super.key, required List<ProductModel> products});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Exclusive Offer', style: AppTextStyle.title),
            TextButton(onPressed: () {}, child: Text('See All')),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 255,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var model = offers[index];
              return ItemCard(model: model);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),

            itemCount: offers.length,
          ),
        ),
      ],
    );
  }
}
