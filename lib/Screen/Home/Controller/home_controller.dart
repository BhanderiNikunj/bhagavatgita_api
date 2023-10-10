import 'package:bhagavatgita_api/Screen/Home/Model/home_model.dart';
import 'package:bhagavatgita_api/Utlis/api_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<dynamic> Data = <dynamic>[].obs;

  void ReadApi() async {
    Data.value = await ApiHelper.apiHelper.GetApi();
  }
}
