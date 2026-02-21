import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/widget/custom_svg_picture.dart';
import 'package:greenmart/features/account/page/account_screen.dart';
import 'package:greenmart/features/cart/pages/cart_screen.dart';
import 'package:greenmart/features/fivorite/pages/favorite_screen.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/features/home/pages/home_screen.dart';
import 'package:greenmart/features/search/page/search_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;

  final List<ProductModel> offersList = offers;
  final List<ProductModel> bestSellingList = bestSelling;
  final List<ProductModel> cartList = allProducts;
  final List<ProductModel> favoritesList = offers;

  late final List<Widget> screens;

  @override
  void initState() {
    super.initState();
    screens = [
      HomeScreen(offersList: offersList, bestSellingList: bestSellingList),
      SearchScreen(),
      CartScreen(products: cartList),
      FavoriteScreen(favorites: favoritesList),
      const AccountScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: _navBar(),
    );
  }

  Container _navBar() {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.greyColor.withValues(alpha: 0.5),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greyColor,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppImages.storeSvg),
            activeIcon: CustomSvgPicture(
              path: AppImages.storeSvg,
              color: AppColors.primaryColor,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppImages.exploreSvg),
            activeIcon: CustomSvgPicture(
              path: AppImages.exploreSvg,
              color: AppColors.primaryColor,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppImages.cartSvg),
            activeIcon: CustomSvgPicture(
              path: AppImages.cartSvg,
              color: AppColors.primaryColor,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppImages.heartSvg),
            activeIcon: CustomSvgPicture(
              path: AppImages.heartSvg,
              color: AppColors.primaryColor,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppImages.userSvg),
            activeIcon: CustomSvgPicture(
              path: AppImages.userSvg,
              color: AppColors.primaryColor,
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
