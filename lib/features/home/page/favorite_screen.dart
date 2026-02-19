import 'package:flutter/material.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/features/home/widget/prouduct_row.dart';

class FavoriteScreen extends StatelessWidget {
  final List<ProductModel> favorites;
  const FavoriteScreen({super.key, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Favorites"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ProductRow(
                        model: favorites[index],
                        showQuantity: false,
                        showRemoveIcon: false,
                        showPriceIcon: true,
                      ),
                      const Divider(height: 30),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: MainButton(text: "Add All to Cart", onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
