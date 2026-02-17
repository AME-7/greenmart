import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/home/account/widget/menu_item.dart';
import 'package:greenmart/features/home/account/widget/profile_header.dart';

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
                  children: [
                    const MenuItem(
                      icon: Icons.shopping_bag_outlined,
                      title: "Orders",
                    ),
                    const MenuItem(
                      icon: Icons.person_outline,
                      title: "My Details",
                    ),
                    const MenuItem(
                      icon: Icons.location_on_outlined,
                      title: "Delivery Address",
                    ),
                    const MenuItem(
                      icon: Icons.credit_card_outlined,
                      title: "Payment Methods",
                    ),
                    const MenuItem(
                      icon: Icons.card_giftcard_outlined,
                      title: "Promo Cord",
                    ),
                    const MenuItem(
                      icon: Icons.notifications_none,
                      title: "Notifications",
                    ),
                    const MenuItem(icon: Icons.help_outline, title: "Help"),
                    const MenuItem(icon: Icons.info_outline, title: "About"),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(16, 16, 16, 30),
              color: Colors.transparent,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.greyColor.withValues(alpha: .5),
                      blurRadius: 1,
                      offset: Offset(0, -5),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.logout, color: AppColors.primaryColor),
                      SizedBox(width: 110),
                      Text(
                        'Log Out',
                        style: AppTextStyle.title.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
