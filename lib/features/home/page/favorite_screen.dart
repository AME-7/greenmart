import 'package:flutter/material.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/features/home/widget/cart_item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Fivoret"),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1, thickness: 1, color: Colors.grey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: offers.length,
                itemBuilder: (context, index) {
                  return CartItem(product: offers[index]);
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: MainButton(text: "Add All to Cart", onPressed: () {}),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
