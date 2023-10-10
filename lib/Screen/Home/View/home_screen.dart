import 'package:bhagavatgita_api/Screen/Home/Controller/home_controller.dart';
import 'package:bhagavatgita_api/Screen/Home/Model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.ReadApi();
  }

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("BhagavatGita"),
        ),
        body: Obx(
          () => ListView.builder(
            itemCount: homeController.Data.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Get.toNamed('/second',
                      arguments: homeController.Data[index].chapterNumber);
                },
                title: Text("${homeController.Data[index].nameTranslated}"),
              );
            },
          ),
        ),
      ),
    );
  }
}
