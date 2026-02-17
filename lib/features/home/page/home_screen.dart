import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/widget/custom_svg_picture.dart';
import 'package:greenmart/core/widget/custom_text_form_field.dart';
import 'package:greenmart/features/home/widget/best_selling_builder.dart';
import 'package:greenmart/features/home/widget/offers_builder.dart';
import 'package:greenmart/features/search/page/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            spacing: 20,
            children: [
              Hero(
                tag: 'search',
                child: Material(
                  color: Colors.transparent,
                  child: CustomTextFormField(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search here',
                    readOnly: true,
                    onTap: () {
                      pushTo(context, SearchScreen());
                    },
                  ),
                ),
              ),
              OffersBuilder(),
              BestSellingBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
