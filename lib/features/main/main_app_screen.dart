import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/widget/custom_svg_picture.dart';
import 'package:greenmart/features/home/account/page/account_screen.dart';
import 'package:greenmart/features/home/page/cart_screen.dart';
import 'package:greenmart/features/home/page/favorite_screen.dart';
import 'package:greenmart/features/home/page/home_screen.dart';
import 'package:greenmart/features/search/page/search_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    FavoriteScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: _navBar(),
    );
  }

  Container _navBar() {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 5),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.greyColor.withValues(alpha: .1),
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
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
            label: "Favorte",
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
