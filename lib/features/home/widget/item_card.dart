import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/details/page/product_details_screen.dart';
import 'package:greenmart/features/home/data/product_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, ProductDetailsScreen(model: model));
      },
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.accentColor),
          boxShadow: [
            BoxShadow(
              color: AppColors.greyColor.withValues(alpha: .1),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Hero(
                    tag: model.tagkay,
                    child: GestureDetector(child: Image.asset(model.image)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                model.name,
                style: AppTextStyle.body.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 7),
              Text(
                model.weight,
                style: AppTextStyle.captoin1.copyWith(
                  color: AppColors.greyColor,
                ),
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${model.price}',
                    style: AppTextStyle.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.add, color: AppColors.backgroundColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
