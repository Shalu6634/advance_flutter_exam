import 'package:flutter/cupertino.dart';

import '../api_helper/api_helper.dart';
import '../modal/product_modal.dart';

class ProductProvider extends ChangeNotifier {
  ApiHelper apiHelper = ApiHelper();

  List productList = [];

  Future<List> fromList() async {
    final pro = await apiHelper.fetchDataFromApi();
    productList = pro.map((e) => ProductModal.fromJson(e)).toList();
    return productList;
  }

  ProductProvider() {
    fromList();
  }
}
