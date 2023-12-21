import 'package:flutter/material.dart';
import 'package:mevivu_test/models/product.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          buildImage(context),
          buildDescription(),
      
        ]),
      ),
    );
  }

  Widget buildImage(BuildContext context) {
    return Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(product.pathImage), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipOval(
                        child: Container(
                      color: Colors.grey,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/");
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                    )),
                    ClipOval(
                        child: Container(
                      color: Colors.grey,
                      child: const Icon(Icons.bookmark),
                    ))
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      product.address,
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.bedroom_child, color: Colors.white),
                        Text("${product.bedrooms.toString()} Bedroom     ",
                            style: const TextStyle(
                                fontSize: 12, color: Colors.white)),
                        const Icon(Icons.bathroom, color: Colors.white),
                        Text("${product.bathroom.toString()} Bathroom",
                            style: const TextStyle(
                                fontSize: 12, color: Colors.white))
                      ],
                    )
                  ]),
            )
          ],
        ));
  }

  Widget buildDescription(){
    return Column(children: [
      const Text(
          "Description",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                product.description,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            const Text(
              "Show more",
              overflow: TextOverflow.ellipsis,
              maxLines: null,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        )
    ],);
  }

  Widget buildOwner(){
    return Row(children: [
      
    ],);
  }
}
