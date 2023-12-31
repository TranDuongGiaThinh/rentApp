import 'package:flutter/material.dart';
import 'package:mevivu_test/components/item.dart';
import 'package:mevivu_test/models/product.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  List<Product> products = [
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
            "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars..."),
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
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text("Best for you",
              style: TextStyle(fontWeight: FontWeight.bold)),
          GestureDetector(onTap: () {}, child: const Text("See more"))
        ]),
        for (Product product in products) Item(product: product)
      ],
    );
  }
}
