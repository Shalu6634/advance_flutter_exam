import 'package:advance_flutter_exam/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/product_provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductProvider productProviderFalse =
    Provider.of<ProductProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('detailScreen'),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  productProviderFalse.productList[selectedIndex].image
                )
              )
            ),
            
          ),

          Text('Title : -',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text('${productProviderFalse.productList[selectedIndex].title}'),
          Text('Description : -',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text(textAlign: TextAlign.center,'${productProviderFalse.productList[selectedIndex].description}')
        ],
      ),
    );
  }
}
