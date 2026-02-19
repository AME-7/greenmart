import 'package:flutter/material.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/features/home/widget/cart_item.dart';

class CartScreen extends StatelessWidget {
  final List<ProductModel> products;
  const CartScreen({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    double total = products.fold(0, (sum, item) => sum + item.price);

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return CartItem(model: products[index]);
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: MainButton(
                text: "Go to Checkout  \$${total.toStringAsFixed(2)}",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
