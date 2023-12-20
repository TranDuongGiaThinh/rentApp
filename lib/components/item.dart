import 'package:flutter/material.dart';
import 'package:mevivu_test/detail_product.dart';
import 'package:mevivu_test/product.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailProductScreen(product: product)));
      },
      child: Row(
        children: [
          SizedBox(
              height: 100,
              width: 100,
              child: Image(
                  image: AssetImage(product.pathImage), fit: BoxFit.cover)),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold)),
                Text("Rp. ${product.price} / Year",
                    style: const TextStyle(fontSize: 12, color: Colors.blue)),
                Row(
                  children: [
                    const Icon(Icons.bedroom_child),
                    Text("${product.bedrooms.toString()} Bedroom     "),
                    const Icon(Icons.bathroom),
                    Text("${product.bathroom.toString()} Bathroom")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
