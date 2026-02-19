import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widget/main_button.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final List<String> categories = [
    "Eggs",
    "Noodles & Pasta",
    "Chips & Crisps",
    "Fast Food",
  ];

  final List<String> brands = [
    "Individual Collection",
    "Cocola",
    "Ifad",
    "Kazi Farmas",
  ];

  final Set<String> selectedCategories = {};
  final Set<String> selectedBrands = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filters"),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Categories", style: AppTextStyle.title),
                    const SizedBox(height: 15),
                    ...categories.map(
                      (e) => _buildCheck(e, selectedCategories),
                    ),
                    const SizedBox(height: 25),
                    Text("Brand", style: AppTextStyle.title),
                    const SizedBox(height: 15),
                    ...brands.map((e) => _buildCheck(e, selectedBrands)),
                  ],
                ),
              ),
            ),
            MainButton(text: "Apply Filter", onPressed: () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildCheck(String title, Set<String> group) {
    return CheckboxListTile(
      value: group.contains(title),
      onChanged: (value) {
        setState(() {
          value == true ? group.add(title) : group.remove(title);
        });
      },
      title: Text(title),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
