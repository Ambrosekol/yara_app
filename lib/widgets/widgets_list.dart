import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

Widget catalogueItem(String name, Function callback) {
  return ElevatedButton(
    style: ButtonStyle(
      // splashFactory: InkSplash.splashFactory,
      // elevation: MaterialStateProperty.resolveWith((states) => 5),
      backgroundColor:
          MaterialStateProperty.resolveWith((states) => Colors.white),
      side: MaterialStateProperty.resolveWith(
        (states) => const BorderSide(
            color: Color.fromARGB(244, 248, 210, 116), width: 1.0),
      ),
      shape: MaterialStateProperty.resolveWith((states) =>
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0))),
      enableFeedback: true,
    ),
    onPressed: () => callback,
    child: Text(
      name,
      style: const TextStyle(color: Colors.black),
    ),
  );
}

Widget catalogueSlider(
    {required String categoryName, required Function callBack}) {
  return Container(
    // padding: Edgein,
    margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8.0),
    child: catalogueItem(categoryName, callBack),
  );
}

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});
  final TextStyle labelstyle = const TextStyle(
    color: Colors.black,
    fontSize: 15.0,
    // fontFamily: 'Fira',
    // fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 280.0,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30.0)),

                ///child missing
              ),
              IconButton(
                  onPressed: () => null,
                  icon: Icon(
                    Ionicons.heart,
                    color: Color.fromARGB(244, 248, 210, 116),
                  )),
            ],
          ),
          const SizedBox(height: 10.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'data',
                style: labelstyle,
              ),
              Text(
                '\$6356',
                style: labelstyle.copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget noDataFromServerDialog(BuildContext context, Function callback) {
  return Center(
    child: Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 184, 4),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Color.fromARGB(255, 191, 138, 3), width: 5.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Ionicons.alert_circle_sharp,
            color: Colors.white,
            size: 40.0,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Oops!',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Abel'),
              ),
              Center(
                child: Text(
                  'We are expriencing Technical Network Issues from our Server',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Abel'),
                ),
              ),
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {
              callback;
            },
            icon: Icon(Ionicons.reload_circle),
            label: Text('Retry'),
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Color.fromARGB(255, 191, 138, 3))),
          )
        ],
      ),
    ),
  );
}
