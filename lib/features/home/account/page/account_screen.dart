import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/features/home/account/widget/menu_item.dart';
import 'package:greenmart/features/home/account/widget/profile_header.dart';
import 'package:greenmart/core/widget/main_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const ProfileHeader(),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                color: AppColors.accentColor,
                child: ListView(
                  padding: const EdgeInsets.only(bottom: 20),
                  children: const [
                    MenuItem(
                      icon: Icons.shopping_bag_outlined,
                      title: "Orders",
                    ),
                    MenuItem(icon: Icons.person_outline, title: "My Details"),
                    MenuItem(
                      icon: Icons.location_on_outlined,
                      title: "Delivery Address",
                    ),
                    MenuItem(
                      icon: Icons.credit_card_outlined,
                      title: "Payment Methods",
                    ),
                    MenuItem(
                      icon: Icons.card_giftcard_outlined,
                      title: "Promo Cord",
                    ),
                    MenuItem(
                      icon: Icons.notifications_none,
                      title: "Notifications",
                    ),
                    MenuItem(icon: Icons.help_outline, title: "Help"),
                    MenuItem(icon: Icons.info_outline, title: "About"),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 30),
              child: MainButton(
                icon: const Icon(Icons.logout, color: AppColors.primaryColor),
                text: "Log Out",
                color: AppColors.accentColor,
                textColor: AppColors.primaryColor,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
