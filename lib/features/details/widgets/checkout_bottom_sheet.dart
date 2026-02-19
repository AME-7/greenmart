import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigations.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/features/details/page/filter_screen.dart';
import 'package:greenmart/features/details/widgets/details_pro.dart';
import 'package:greenmart/features/home/data/product_model.dart';

void showCheckoutBottomSheet(BuildContext context, ProductModel model) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    backgroundColor: AppColors.backgroundColor,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) {
      return CheckoutBottomSheet(model: model);
    },
  );
}

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Checkout', style: AppTextStyle.title),
                IconButton(onPressed: () {}, icon: Icon(Icons.close)),
              ],
            ),
            Divider(height: 30),
            DetailsPro(text: 'Delivery', textdata: 'Select Method'),
            Divider(height: 39),
            DetailsPro(text: 'Pament', textdata: ''),
            Divider(height: 30),
            DetailsPro(text: 'Promo Code', textdata: 'Pick discount'),
            Divider(height: 30),
            DetailsPro(text: 'Delivery', textdata: '\$${model.price}'),
            Divider(height: 29),
            Text('By placing an order you agree to our Terms And Candition'),
            SizedBox(height: 40),
            MainButton(
              text: 'Place Order',
              onPressed: () {
                pushTo(context, FilterScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
