import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../category_screen.dart';
import '../home_screen.dart';
import '../profile_screen.dart';

class HomeController extends GetxController {
  RxInt currentindexnum = 0.obs;
  RxBool dataloder = false.obs;
  RxList nevigationlist = [
    HomeScreen(),
    category_Screen(),
    profile_Screen(),
  ].obs;

  RxList imgList = [].obs;

  getAllImg() async {
    try {
      dataloder.value = true;
      var res = await http.get(
          Uri.parse(
              'https://api.pexels.com/v1/search?query=all&page=9&per_page=80'),
          headers: {
            'accept': '*/*',
            'Authorization':
                'cUZpZeQJJvkDq0dTNfyiHPIYrSpeDcti6ZW9U2FEJhIOVPBfkTg0ES30',
            'Cookie':
                '__cf_bm=n.LhRD9muC4.AHG4J4Phgq690.e9I53IuDeAGhX1D64-1705054242-1-AQL/svS/llJDAsuIGDDRC1XXxIhu8HfZgvmNZ58c3YUs27U+L4DxiuWJvggArRZiuSUbMtBJud6bpWzZfFiQgTk='
          });
      var data = jsonDecode(res.body);
      imgList.addAll(data["photos"]);
      dataloder.value = false;
      debugPrint("${imgList.length}");
      debugPrint("statuscode ${res.statusCode}");
    } catch (e) {
      debugPrint("error---->> $e");
    }
  }

  OntapFun(final index) {
    currentindexnum.value = index;
  }
}
