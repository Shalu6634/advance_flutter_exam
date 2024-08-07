import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/global.dart';
import '../provider/product_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductProvider productProviderFalse =
        Provider.of<ProductProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: FutureBuilder(
        future: productProviderFalse.fromList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: ()
                  {
                    selectedIndex = index ;
                    Navigator.of(context).pushNamed('/detail');
                  },
                  child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 160,
                            width: 190,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(productProviderFalse
                                        .productList[index].image))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 100),
                              child: Container(
                                height: 80,
                                width: 200,
                                decoration: BoxDecoration(color: Colors.white),
                                child: Column(
                                  children: [
                                    Text(
                                      'cate: ${productProviderFalse.productList[index].category}'
                                          .toString(),
                                      style: TextStyle(
                                          height: 1,
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                    Text(
                                      productProviderFalse
                                          .productList[index].title
                                          .toString(),
                                      style: TextStyle(
                                          height: 2,
                                          fontSize: 10,
                                          overflow: TextOverflow.ellipsis),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ));
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
