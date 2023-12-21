import 'package:flutter/material.dart';
import 'package:mevivu_test/components/item_near.dart';
import 'package:mevivu_test/models/product.dart';

class ListNear extends StatelessWidget {
  ListNear({super.key});

  final List<Product> products = [
    Product(
        id: 1,
        idOwner: 1,
        pathImage: "asset/img1.png",
        images: ["asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png"],
        name: "Orchad House",
        price: "2.500.000.000",
        bedrooms: 6,
        bathroom: 4,
        address: "Đường Nguyễn Tất Thành",
        description:
            "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars ..."),
    Product(
        id: 2,
        idOwner: 1,
        pathImage: "asset/img2.png",
        images: ["asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png","asset/img2.png"],
        name: "The Hollies House",
        price: "2.000.000.000",
        bedrooms: 5,
        bathroom: 2,
        address: "Đường Quang Trung",
        description:
            "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...")
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
    ]));
  }
}
