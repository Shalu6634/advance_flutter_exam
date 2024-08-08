import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/global.dart';
import '../provider/cart_Provider.dart';
import '../provider/product_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider =
        Provider.of<CartProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...List.generate(
              cartList.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(cartList[index].category),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(cartList[index].title),
                        ),
                        GestureDetector(onTap: () {
                          cartList.removeAt(index);
                          cartProvider.removeqtyAll(index);
                        }, child: Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
