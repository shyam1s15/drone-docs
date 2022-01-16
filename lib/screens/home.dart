import 'package:drone_docs/helpers/screen_navigation.dart';
import 'package:drone_docs/helpers/styles.dart';
import 'package:drone_docs/screens/shopping_bag.dart';
import 'package:drone_docs/widgets/current_developement.dart';
import 'package:drone_docs/widgets/custom_bottom_nav_bar.dart';
import 'package:drone_docs/widgets/custom_text.dart';
import 'package:drone_docs/widgets/drone_types.dart';
import 'package:drone_docs/widgets/parts.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: white),
        backgroundColor: black,
        elevation: 0.1,
        title: const CustomText(
          text: 'Drone Docs',
          color: white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                IconButton(
                    onPressed: () {
                      changeScreen(context, const ShoppingBag());
                    },
                    icon: const Icon(Icons.add_shopping_cart)),
                Positioned(
                  top: 12,
                  right: 6,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none)),
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      backgroundColor: white,
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: black),
                accountName: CustomText(
                  // text: authProvider.userModel.name,
                  text: "Developed & maintained by",
                  color: white,
                ),
                accountEmail: CustomText(
                  // text: authProvider.userModel.email,
                  text: "Dr. Subhash Technical Campus",
                  color: white,
                )),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.home),
              title: const CustomText(
                text: 'Recent Articles',
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.report_problem),
              title: const CustomText(
                text: 'Recent Issues',
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.library_add_sharp),
              title: const CustomText(
                text: 'Buy Watchlist',
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.playlist_add_check_rounded),
              title: const CustomText(
                text: 'Bought Parts',
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.attach_money),
              title: const CustomText(
                text: 'Business ideas',
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: black,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, right: 8, left: 8, bottom: 16),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: []),
                  child: const ListTile(
                    leading: Icon(Icons.search, color: red),
                    title: TextField(
                      decoration: InputDecoration(
                          hintText: "Find articles, parts, references",
                          border: InputBorder.none),
                    ),
                    trailing: Icon(Icons.filter_list, color: red),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Popular Parts',
                size: 20,
                color: grey,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Parts(),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Type of Drones',
                size: 20,
                color: grey,
              ),
            ),
            DroneType(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Current Development target',
                color: grey,
                size: 20,
              ),
            ),
            const CurrentDevelopement(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
