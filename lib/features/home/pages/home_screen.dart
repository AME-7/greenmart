import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/widget/custom_svg_picture.dart';
import 'package:greenmart/core/widget/custom_text_form_field.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/features/home/widget/best_selling_builder.dart';
import 'package:greenmart/features/home/widget/offers_builder.dart';
import 'package:greenmart/features/search/page/search_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<ProductModel> offersList;
  final List<ProductModel> bestSellingList;

  const HomeScreen({
    super.key,
    required this.offersList,
    required this.bestSellingList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: CustomSvgPicture(
            path: AppImages.logoSvg,
            color: AppColors.primaryColor,
            width: 250,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: 'search',
                child: Material(
                  color: Colors.transparent,
                  child: CustomTextFormField(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search here',
                    readOnly: true,
                    onTap: () {
                      pushTo(context, SearchScreen());
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OffersBuilder(products: offersList),
              const SizedBox(height: 20),
              BestSellingBuilder(products: bestSellingList),
            ],
          ),
        ),
      ),
    );
  }
}
