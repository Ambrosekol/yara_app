import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:yara_app/util/models.dart';

import '../widgets/flexiblespacewidget.dart';
import '../widgets/widgets_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({this.productsData, super.key});
  final ProductsData? productsData;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color brandColor = const Color.fromARGB(255, 255, 184, 4);
  bool mostPopularButtonSeeAll = false;
  bool happySaleButtonSeeAll = false;
  List<Products> productInstanceList = [];
  List<String> unprocessedCategoryList = [];
  List<String> processedCatrgoryList = [];

  @override
  void initState() {
    populateCategories();
    super.initState();
  }

  void populateCategories() {
    // print(widget.productsData!.products![0].brand);
    for (var i = 0; i < widget.productsData!.products!.length; i++) {
      productInstanceList.add(widget.productsData!.products![i]);
    }
    for (var i = 0; i < productInstanceList.length; i++) {
      unprocessedCategoryList.add(productInstanceList[i].category.toString());
    }
    processedCatrgoryList = unprocessedCategoryList.toSet().toList();
    print(processedCatrgoryList);
    // print(productInstanceList[0].brand);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // scrollBehavior: ScrollBehavior(
      //   androidOverscrollIndicator:
      // ),
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          centerTitle: true,

          title: const Text(
            'YARA',
            style: TextStyle(color: Colors.black, fontFamily: 'Rubik'),
          ),
          backgroundColor: brandColor,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Ionicons.menu_outline,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.search, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.bag_handle_sharp,
                color: Colors.black,
              ),
            ),
          ],
          floating: true,
          // pinned: true,
          expandedHeight: 10.0,
          // flexibleSpace: FlexibleSpaceBar(background: Text('Welcome')),
        ),
        SliverToBoxAdapter(
          child: flexibleSpaceWidget(
            context,
            'Welcome',
            addWelcomeMessage: true,
            backgroundImage: 'assets/images/happy_woman.jpg',
            percentageOff: '25% OFF',
            promodate: 'Dec 16 - Dec 31',
            dateColor: Colors.black,
            percentageColor: Colors.black,
            titleColor: Colors.black,
            buttonColor: Color.fromARGB(255, 236, 112, 10),
            //need to face this
            callback: () => print('yes'),
            discountTitle: 'Super discount',
            buttonText: 'Grab Now!',
            buttonTextColor: Colors.white,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
              // color: Colors.green,
              padding: const EdgeInsets.all(5.0),
              height: 70.0,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                // addRepaintBoundaries: true,
                itemBuilder: (context, index) => catalogueSlider(
                  categoryName: processedCatrgoryList[index],
                  callBack: () => null,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: processedCatrgoryList.length,
                physics: const BouncingScrollPhysics(),
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 350.0,
            // padding: const EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  ProductContainer(productInstanceList, index),
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              physics: const BouncingScrollPhysics(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Most Popular',
                  style: TextStyle(
                      fontFamily: 'Bowlby', fontSize: 20.0, height: 2.2),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (mostPopularButtonSeeAll) {
                          mostPopularButtonSeeAll = false;
                        } else {
                          mostPopularButtonSeeAll = true;
                        }
                      });
                      print(mostPopularButtonSeeAll);
                    },
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        mostPopularButtonSeeAll
            ? SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) =>
                      ProductContainer(productInstanceList, index),
                  childCount: 30,
                ),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  // crossAxisSpacing: 150.0,
                  mainAxisExtent: MediaQuery.of(context).size.height * 0.45,
                ),
              )
            : SliverToBoxAdapter(
                child: Container(
                  height: 350.0,
                  // padding: const EdgeInsets.all(8.0),
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        ProductContainer(productInstanceList, index),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    physics: const BouncingScrollPhysics(),
                  ),
                ),
              ),
        // SliverToBoxAdapter(
        //   child: Container(
        //     height: MediaQuery.of(context).size.height * 0.45,

        //     // alignment: Alignment.topCenter,
        //     child: ListView.builder(
        //       physics: BouncingScrollPhysics(),
        //       // shrinkWrap: true,
        //       scrollDirection: Axis.horizontal,
        //       itemBuilder: (context, index) => flexibleSpaceWidget(
        //         context,
        //         'Welcome',
        //         addWelcomeMessage: false,
        //         backgroundImage: 'assets/images/banner_image.jpg',
        //         percentageOff: '25% OFF',
        //         promodate: 'Dec 16 - Dec 31',
        //         dateColor: Colors.white,
        //         percentageColor: Colors.black,
        //         titleColor: Colors.white,
        //         buttonColor: Colors.black,
        //         //need to face this
        //         callback: () => print('object'),
        //         discountTitle: 'Super discount',
        //         buttonText: 'Grab Now!',
        //         buttonTextColor: Colors.white,
        //       ),
        //     ),
        //   ),
        // ),
        // SliverList(
        //   delegate: SliverChildBuilderDelegate(
        //     (context, index) {
        //       return Text(
        //         'data',
        //         style: TextStyle(fontSize: 15.0),
        //       );
        //     },
        //     childCount: 80,
        //   ),
        // )
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Happy Sale',
                  style: TextStyle(
                      fontFamily: 'Bowlby', fontSize: 20.0, height: 2.2),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (happySaleButtonSeeAll) {
                          happySaleButtonSeeAll = false;
                        } else {
                          happySaleButtonSeeAll = true;
                        }
                      });
                    },
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        happySaleButtonSeeAll
            ? SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) =>
                      ProductContainer(productInstanceList, index),
                  childCount: 10,
                ),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  // crossAxisSpacing: 150.0,
                  mainAxisExtent: MediaQuery.of(context).size.height * 0.45,
                ),
              )
            : SliverToBoxAdapter(
                child: Container(
                  height: 350.0,
                  // padding: const EdgeInsets.all(8.0),
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        ProductContainer(productInstanceList, index),
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    physics: const BouncingScrollPhysics(),
                  ),
                ),
              ),
      ],
    );
  }
}
