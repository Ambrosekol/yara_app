import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:yara_app/network/network.dart';
import 'package:yara_app/screens/homescreen.dart';
import 'package:yara_app/screens/loginscreen.dart';
import 'package:yara_app/screens/searchscreen.dart';
import 'package:yara_app/util/models.dart';
import 'package:yara_app/widgets/widgets_list.dart';

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
  late Future<ProductsData> _productsData;

  apiInjector(ProductsData? data) {
    for (var i = 0; i < appScreens.length; i++) {
      if (appScreens[i] == appScreens[screenController]) {
        return HomeScreen(
          productsData: data,
        );
      } else if (appScreens[1] == appScreens[screenController]) {
        return SearchScreen();
      } else {
        return Center(child: Text('No Data'));
      }
    }
  }

  @override
  void initState() {
    _productsData = ApiCall().getProductsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        // initialData: appScreens[0],
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              return apiInjector(snapshot.data);
            } else {
              return noDataFromServerDialog(context, () => null);
            }
          }
        },
        future: _productsData,
      ),
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
        height: 40.0,
        items: [
          Icon(
            Ionicons.home,
            size: 20.0,
            color: brandColor,
          ),
          Icon(
            size: 20,
            Ionicons.search,
            color: brandColor,
          ),
          Icon(
            Ionicons.heart,
            color: brandColor,
            size: 20.0,
          ),
          Icon(
            Ionicons.person,
            color: brandColor,
            size: 20.0,
          )
        ],
      ),
    );
  }
}
