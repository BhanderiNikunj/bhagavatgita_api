import 'package:bhagavatgita_api/Screen/Second/Controller/second_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var index = Get.arguments;
    secondController.SecondData(number: index);
  }

  SecondController secondController = Get.put(SecondController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Slok"),
        ),
        body: Obx(
          () => ListView.builder(
            itemCount: secondController.SlokData.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text("${secondController.SlokData[index].id}"),
                title:
                    Text("${secondController.SlokData[index].transliteration}"),
              );
            },
          ),
        ),
      ),
    );
  }
}
