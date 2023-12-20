import 'package:flutter/material.dart';
import 'package:mevivu_test/components/item_near.dart';
import 'package:mevivu_test/product.dart';

class ListNear extends StatelessWidget {
  ListNear({super.key});

  final List<Product> products = [
    Product(id: 1, pathImage: "asset/img1.png", name: "Orchad House", price: "2.500.000.000", bedrooms: 6, bathroom: 4, address: "Đường Nguyễn Tất Thành"),
    Product(id: 2, pathImage: "asset/img2.png", name: "The Hollies House", price: "2.000.000", bedrooms: 5, bathroom: 2, address: "Đường Quang Trung")
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text("Near from you",
                style: TextStyle(fontWeight: FontWeight.bold)),
            GestureDetector(onTap: () {}, child: const Text("See more"))
          ]),
          Row(
            children: [
              for (Product product in products) ItemNear(product: product)
            ],
          )
        ])
    );
  }
}
