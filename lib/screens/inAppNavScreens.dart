import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:yara_app/network/network.dart';
import 'package:yara_app/screens/homescreen.dart';
import 'package:yara_app/screens/searchscreen.dart';
import 'package:yara_app/util/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> appScreens = [HomeScreen(), SearchScreen()];
  int screenController = 0;
  Color brandColor = const Color.fromARGB(255, 255, 184, 4);
  // bool mostPopularButtonSeeAll = true;
  late ProductsData _productsData;
  @override
  void initState() {
    ApiCall().getProductsData().then((value) {
      setState(() {
        _productsData = value;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[screenController],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          setState(() {
            screenController = index;
          });
        },
        animationCurve: Curves.easeOutCubic,
        // color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: brandColor,
        height: 50.0,
        items: [
          Icon(
            Ionicons.home,
            size: 25.0,
            color: brandColor,
          ),
          Icon(
            size: 25,
            Ionicons.search,
            color: brandColor,
          ),
          Icon(
            Ionicons.heart,
            color: brandColor,
            size: 30.0,
          ),
          Icon(
            Ionicons.person,
            color: brandColor,
            size: 30.0,
          )
        ],
      ),
    );
  }
}
