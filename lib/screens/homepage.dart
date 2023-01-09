import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:yara_app/widgets/flexiblespacewidget.dart';
import 'package:yara_app/widgets/widgets_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool mostPopularButtonSeeAll = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              centerTitle: true,
              title: const Text(
                'YARA',
                style: TextStyle(color: Colors.black, fontFamily: 'Rubik'),
              ),
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Ionicons.menu_outline,
                  color: Colors.black,
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
                    Ionicons.bag_handle,
                    color: Colors.black,
                  ),
                ),
              ],
              floating: true,
              expandedHeight: MediaQuery.of(context).size.height / 2.5,
              flexibleSpace: FlexibleSpaceBar(
                background: flexibleSpaceWidget(
                  context,
                  'Welcome',
                  backgroundImage: 'assets/images/banner_image.jpg',
                  percentageOff: '25% OFF',
                  promodate: 'Dec 16 - Dec 31',
                  dateColor: Colors.white,
                  percentageColor: Colors.black,
                  titleColor: Colors.white,
                  buttonColor: Colors.black,
                  //need to face this
                  callback: () => print('object'),
                  discountTitle: 'Super discount',
                  buttonText: 'Grab Now!',
                  buttonTextColor: Colors.white,
                ),
              )),
          SliverToBoxAdapter(
            child: Container(
                // color: Colors.green,
                padding: const EdgeInsets.all(5.0),
                height: 70.0,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  // addRepaintBoundaries: true,
                  itemBuilder: (context, index) => catalogueSlider(
                    categoryName: 'gfgfffg Phones',
                    callBack: () => null,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  physics: const BouncingScrollPhysics(),
                )),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 350.0,
              // padding: const EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemBuilder: (context, index) => ProductContainer(),
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
          SliverToBoxAdapter(
            child: Container(
              height: 350.0,
              // padding: const EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemBuilder: (context, index) => ProductContainer(),
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                physics: const BouncingScrollPhysics(),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Text(
                  'data',
                  style: TextStyle(fontSize: 15.0),
                );
              },
              childCount: 80,
            ),
          )
        ],
      ),
    );
  }
}
