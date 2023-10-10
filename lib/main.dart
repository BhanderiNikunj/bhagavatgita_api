import 'package:bhagavatgita_api/Screen/Home/View/home_screen.dart';
import 'package:bhagavatgita_api/Screen/Second/View/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
        ),
        GetPage(
          name: '/second',
          page: () => SecondScreen(),
        )
      ],
    ),
  );
}
