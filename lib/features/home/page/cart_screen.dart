import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/features/home/data/product_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double total = offers.fold(0, (sum, item) => sum + item.price);

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        centerTitle: true,
        elevation: 0,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1, thickness: 1, color: Colors.grey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: allProducts.length,
                itemBuilder: (context, index) {
                  final item = allProducts[index];
                  return Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(item.image, width: 70, height: 70),
                          const SizedBox(width: 12),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  item.weight,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    _qtyButton(Icons.remove),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                      ),
                                      child: Text(
                                        "1",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    _qtyButton(Icons.add, isAdd: true),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,

                            children: [
                              Icon(
                                Icons.close,
                                color: AppColors.greyColor,
                                size: 20,
                              ),
                              SizedBox(height: 25),
                              Text(
                                "\$${item.price.toStringAsFixed(2)}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
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

  Widget _qtyButton(IconData icon, {bool isAdd = false}) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Icon(icon, color: isAdd ? Colors.green : Colors.grey),
    );
  }
}
