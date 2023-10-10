import 'package:bhagavatgita_api/Screen/Second/Model/all_model.dart';
import 'package:bhagavatgita_api/Utlis/api_helper.dart';
import 'package:get/get.dart';

class SecondController extends GetxController {
  RxList<dynamic> SlokData = <dynamic>[].obs;

  void SecondData({required number}) async {
    SlokData.value =
        await ParticularApiHelper.partapihelper.SlokApi(number: number);
  }
}
