import 'package:flutter/material.dart';
import 'package:greenmart/core/widget/custom_text_form_field.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/features/search/widget/filtered_grid_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final focusNode = FocusNode();
  String searchKay = '';
  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Hero(
          tag: 'search',
          child: Material(
            color: Colors.transparent,
            child: CustomTextFormField(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search',
              focusNode: focusNode,
              onChange: (value) {
                setState(() {
                  searchKay = value;
                });
              },
            ),
          ),
        ),
        actions: [SizedBox(width: 20)],
      ),
      body: FilteredGridView(products: getProductsByName(searchKay)),
    );
  }
}

List<ProductModel> getProductsByName(String searchKey) {
  List<ProductModel> filteredProducts = [];
  for (var protected in allProducts) {
    if (protected.name.toLowerCase().contains(searchKey)) {
      filteredProducts.add(protected);
    }
  }
  return filteredProducts;
}
