import 'package:flutter/material.dart';
import 'package:mevivu_test/product.dart';

class ItemNear extends StatelessWidget {
  const ItemNear({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        child: Container(
          height: 200,
          width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(product.pathImage), fit: BoxFit.cover)),
            child: Column(
              children: [],
            )),
      ),
    );
  }
}
