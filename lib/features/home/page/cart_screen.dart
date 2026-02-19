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
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Icon(Icons.close),
                              ),
                              const SizedBox(height: 20),
                              const Icon(
                                Icons.error,
                                size: 100,
                                color: Colors.red,
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                "Oops! Order Failed",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text("Something went terribly wrong."),
                              const SizedBox(height: 25),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text("Please Try Again"),
                                ),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Back to home"),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
