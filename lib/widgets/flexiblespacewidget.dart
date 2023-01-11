import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget flexibleSpaceWidget(
  BuildContext context,
  String welcomeMessage, {
  required bool addWelcomeMessage,
  required String backgroundImage,
  required String percentageOff,
  required String promodate,
  required Color dateColor,
  required Color percentageColor,
  required Color titleColor,
  required Color buttonColor,
  required Function callback,
  required String discountTitle,
  required String buttonText,
  required Color buttonTextColor,
}) {
  return Container(
    // color: Colors.amber,
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        addWelcomeMessage
            ? Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  welcomeMessage,
                  style: const TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Abel',
                      fontWeight: FontWeight.bold),
                ),
              )
            : SizedBox(),
        Container(
          padding: const EdgeInsets.all(17.0),
          margin: const EdgeInsets.all(8.0),
          width: MediaQuery.of(context).size.width / 1.2,
          height: MediaQuery.of(context).size.height * 0.24,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    offset: Offset(5.0, 4.0),
                    color: Color.fromARGB(215, 6, 4, 3))
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(backgroundImage),
              ),
              color: const Color.fromARGB(216, 255, 230, 218),
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    promodate,
                    style: TextStyle(
                      color: dateColor,
                      fontFamily: 'Abel',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    percentageOff,
                    style: TextStyle(
                      color: percentageColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Bowlby',
                      fontSize: 26.0,
                      // height: 30.0
                    ),
                  ),
                  Text(
                    discountTitle,
                    style: TextStyle(
                      color: titleColor,
                      // fontWeight: FontWeight.bold,
                      fontFamily: 'Dongle',
                      fontSize: 30.0,
                      height: 0.6,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => callback,
                    child: Container(
                      height: 35.0,
                      width: MediaQuery.of(context).size.width * 0.26,
                      decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          buttonText,
                          style: TextStyle(color: buttonTextColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
