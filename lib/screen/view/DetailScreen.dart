import 'package:advance_flutter_exam/screen/modal/product_modal.dart';
import 'package:advance_flutter_exam/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/product_provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ProductProvider productProviderFalse =
        Provider.of<ProductProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height * 0.3,
                  width: width * 0.999,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(productProviderFalse
                          .productList[selectedIndex].image),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productProviderFalse.productList[selectedIndex].title,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Row(
                          children: [
                            Text(
                              'Price: ',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '${productProviderFalse.productList[selectedIndex].price}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Divider(),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          'Description : ',
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          '${productProviderFalse.productList[selectedIndex].description}⭐⭐⭐⭐',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                GestureDetector(onTap: () {
                  cartList.add(productProviderFalse.productList[selectedIndex]);
                  for (int i = 0;
                      i < productProviderFalse.productList.length;
                      i++) {
                    qty.add;
                  }

                  Navigator.of(context).pushNamed('/cart');

                  Container(
                    height: 60,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
