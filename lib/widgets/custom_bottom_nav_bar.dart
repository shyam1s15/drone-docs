import 'package:drone_docs/helpers/screen_navigation.dart';
import 'package:drone_docs/screens/shopping_bag.dart';
import 'package:drone_docs/screens/team.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../helpers/styles.dart';
import 'bottom_nav_bar/bottom_navigation_icon.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({Key? key}) : super(key: key);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // final authProvider = Provider.of<AuthProvider>(context);

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      // color: white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavIcon(
            name: 'Home',
            icon: Icons.home_outlined,
            onTap: () {
              // print("Hellow");

            },
          ),
          BottomNavIcon(
            name: 'Team',
            icon: Icons.supervised_user_circle_outlined,
            onTap: () {
              // print("Hellow");
              changeScreen(context, TeamScreen());
            },
          ),
          BottomNavIcon(
            name: 'References',
            icon: Icons.link,
            onTap: () {
              changeScreen(context, ShoppingBag());
            },
          ),
          BottomNavIcon(
            name: 'Funds',
            icon: Icons.attach_money_outlined,
            onTap: () async {
            },
          ),
        ],
      ),
    );
  }
}
