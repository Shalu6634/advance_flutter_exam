import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future fetchDataFromApi()  async{
    String api =
        "https://fakestoreapi.com/products?_gl=1*1s40qt8*_ga*NzU0MDk5NjMuMTcyMzAxNTczMg..*_ga_ZCYG64C7PL*MTcyMzAxNTczMi4xLjEuMTcyMzAxNTgwNi4wLjAuMA..";

    Uri url = Uri.parse(api);
    Response response =  await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      final List data = jsonDecode(json);
      return data;
    } else {
      return [];
    }
  }
}
