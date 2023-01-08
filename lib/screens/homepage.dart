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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
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
                  callback: () => print('object'),
                  discountTitle: 'Super discount',
                  buttonText: 'Grab Now!',
                  buttonTextColor: Colors.white,
                ),
              )),
          SliverToBoxAdapter(
            child: Container(
                // color: Colors.green,
                padding: EdgeInsets.all(10),
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return catalogueSlider();
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 80,
                )),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Text('data');
              },
              childCount: 80,
            ),
          )
        ],
      ),
    );
  }
}
