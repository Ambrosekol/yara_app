import 'package:flutter/material.dart';

Widget catalogueItem(String name, Function callback) {
  return ElevatedButton(onPressed: () => callback, child: Text(name));
}

Widget catalogueSlider() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15),
    child: catalogueItem('gfgfffg Phones', () => null),
  );
}
