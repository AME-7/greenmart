import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/widget/qty_button.dart';
import 'package:greenmart/features/details/page/product_details_screen.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';

class ProductRow extends StatelessWidget {
  final ProductModel model;
  final bool showQuantity;
  final bool showRemoveIcon;
  final bool showPriceIcon;

  const ProductRow({
    super.key,
    required this.model,
    this.showQuantity = false,
    this.showRemoveIcon = false,
    this.showPriceIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, ProductDetailsScreen(model: model));
      },
      child: Row(
        children: [
          Hero(
            tag: model.tagkay,
            child: Image.asset(model.image, width: 70, height: 70),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: AppTextStyle.body.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(model.weight, style: AppTextStyle.captoin1),
                if (showQuantity) ...[
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      QtyButton(icon: Icons.remove),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text("1", style: TextStyle(fontSize: 16)),
                      ),
                      QtyButton(icon: Icons.add, isAdd: true),
                    ],
                  ),
                ],
              ],
            ),
          ),
          if (showRemoveIcon)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.close, color: AppColors.greyColor, size: 20),
                const SizedBox(height: 25),
                Text(
                  "\$${model.price.toStringAsFixed(2)}",
                  style: AppTextStyle.body.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          if (showPriceIcon)
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$${model.price.toStringAsFixed(2)}",
                  style: AppTextStyle.body.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.greyColor,
                  size: 20,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
