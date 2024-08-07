
import 'package:flutter/cupertino.dart';

import '../../utils/global.dart';


class CartProvider extends ChangeNotifier{
  void add(int index)
  {
    qty[index]++;
    notifyListeners();
  }
  void removeQty(int index)
  {
    if(qty[index]>0)
    {
      qty[index]--;
    }
  }

}