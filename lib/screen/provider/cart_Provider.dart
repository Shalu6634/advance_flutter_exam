
import 'package:flutter/cupertino.dart';

import '../../utils/global.dart';


class CartProvider extends ChangeNotifier{
  dynamic price=0;
  void add(int index)
  {
    notifyListeners();
  }


  void removeqtyAll(int index)
  {
    // price -= cartList[index].price;
    // cartList.removeAt(index);
    // qty[index] = 1;
    print(cartList);
    notifyListeners();
  }

}