import 'package:flutter/material.dart';
import 'package:karta_app/core/utils/colors.dart';
import 'package:karta_app/features/balance/balance_view.dart';
import 'package:karta_app/features/car/car_view.dart';
import 'package:karta_app/features/home/home_view.dart';
import 'package:karta_app/features/profile/profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  List<Widget> pages = [HomeView(), CarView(), BalanceView(), ProfileView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[index],
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            //selectedItemColor: AppColors.primaryColor,
            //unselectedItemColor: AppColors.greyColor,
            backgroundColor: AppColors.whiteColor,
            currentIndex: index,
            onTap: (value) => setState(() => index = value),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/home.png',
                ),
                activeIcon: Image.asset(
                  'assets/icons/home.png',
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    'assets/icons/car.png',
                  ),
                  icon: Image.asset(
                    'assets/icons/car.png',
                  ),
                  label: 'Car'),
              BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    'assets/icons/Vector-1.png',
                  ),
                  icon: Image.asset(
                    'assets/icons/Vector-1.png',
                  ),
                  label: 'Profile'),
              BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    'assets/icons/profile.png',
                  ),
                  icon: Image.asset(
                    'assets/icons/profile.png',
                  ),
                  label: 'Profile'),
            ]));
  }
}
