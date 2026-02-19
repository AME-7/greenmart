import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/features/details/widgets/details_pro.dart';
import 'package:greenmart/features/home/data/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF2F3F2),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.sizeOf(context).height * .35,

            decoration: BoxDecoration(
              color: Color(0xffF2F3F2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: Center(
              child: Hero(tag: model.tagkay, child: Image.asset(model.image)),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.name,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          model.weight,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.favorite_border, size: 28),
                  ],
                ),

                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.remove),
                        const SizedBox(width: 15),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: const Text(
                            "1",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Icon(
                          Icons.add,
                          size: 20,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                    Text(
                      "\$${model.price}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: Text(
                    'Product Details',
                    style: AppTextStyle.captoin1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  children: [
                    Text(
                      'Apple is a fruit that is widely consumed around the world. It is known for its sweet and crisp taste, as well as its nutritional benefits. ',

                      style: AppTextStyle.body.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: DetailsPro(text: 'Nutrition', textdata: '100gr'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: DetailsPro(text: 'Review', textdata: '5 stars'),
                ),
              ],
            ),
          ),
          MainButton(text: "Add All to Basket", onPressed: () {}),
        ],
      ),
    );
  }
}
