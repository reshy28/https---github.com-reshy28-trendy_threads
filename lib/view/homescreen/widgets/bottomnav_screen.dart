import 'package:flutter/material.dart';
import 'package:trendy_threads/utlis/color_constant.dart';
import 'package:trendy_threads/view/Cart_screen/Cart_screen.dart';
import 'package:trendy_threads/view/LoginScreens/Login_screen.dart';
import 'package:trendy_threads/view/homescreen/widgets/liked_items.dart';
import 'package:trendy_threads/view/LoginScreens/otp_verification.dart';
import 'package:trendy_threads/view/account_info/account_info.dart';
import 'package:trendy_threads/view/homescreen/homescreen.dart';
import 'package:trendy_threads/view/homescreen/widgets/Carouseldliderscreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int MyCurrentIndex = 0;
  List pages = [
    Homescreen(),
    CartScreen(),
    LikedItems(),
    AccountInfo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black, blurRadius: 30, offset: Offset(0, 10)),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
              backgroundColor: Colors.black,
              selectedFontSize: 12,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.black,
              currentIndex: MyCurrentIndex,
              onTap: (index) {
                setState(() {
                  MyCurrentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined), label: "Like"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_outlined),
                    label: "Account"),
              ]),
        ),
      ),
      body: pages[MyCurrentIndex],
    );
  }
}
