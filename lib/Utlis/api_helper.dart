import 'dart:convert';
import 'package:bhagavatgita_api/Screen/Home/Model/home_model.dart';
import 'package:bhagavatgita_api/Screen/Second/Model/all_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  static ApiHelper apiHelper = ApiHelper._();

  ApiHelper._();

  Future<List> GetApi() async {
    String link = "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/";
    Uri uri = Uri.parse(link);
    var res = await http.get(
      uri,
      headers: {
        "X-RapidAPI-Key": "0879344c6dmsha1627f90fd35f77p1ad740jsne6f395c3cb33",
        "X-RapidAPI-Host": "bhagavad-gita3.p.rapidapi.com"
      },
    );
    List json = jsonDecode(res.body);

    List data = json.map((e) => HomeModel.fromJson(e)).toList();
    return data;
  }
}

//---------------Second Class---------------//

class ParticularApiHelper {
  static ParticularApiHelper partapihelper = ParticularApiHelper._();

  ParticularApiHelper._();

  Future<List> SlokApi({required number}) async {
    String link =
        "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/$number/verses/";
    Uri uri = Uri.parse(link);
    var respone = await http.get(
      uri,
      headers: {
        "X-RapidAPI-Key": "0879344c6dmsha1627f90fd35f77p1ad740jsne6f395c3cb33",
        "X-RapidAPI-Host": "bhagavad-gita3.p.rapidapi.com"
      },
    );
    List json = jsonDecode(respone.body);

    List slokist = json.map((e) => AllModel.fromJson(e)).toList();
    return slokist;
  }
}
