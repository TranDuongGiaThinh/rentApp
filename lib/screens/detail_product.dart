import 'package:flutter/material.dart';
import 'package:mevivu_test/models/owner.dart';
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
          buildOwner(),
          buildGalleryImage(context),
          buildMap(),
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

  Widget buildDescription() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildOwner() {
    Owner owner = Owner(
        id: 1,
        name: "Gia Thịnh",
        pathAvatar: "asset/avatar.png",
        phone: "0987654321");

    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage(owner.pathAvatar), fit: BoxFit.cover)),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  owner.name,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Text("Owner")
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
              onTap: () {},
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: const Icon(
                    Icons.phone,
                    color: Colors.white,
                  ))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: GestureDetector(
              onTap: () {},
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: const Icon(
                    Icons.messenger,
                    color: Colors.white,
                  ))),
        ),
      ],
    );
  }

  Widget buildGalleryImage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Gallery",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              for (int i = 0; i < 4 && i < product.images.length; i++)
                buildItemImage(context, product.images[i], i),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildItemImage(BuildContext context, String path, int i) {
    String txt = "";
    if (i == 3) txt = "+${product.images.length - i}";
    double width = (MediaQuery.of(context).size.width - 16) / 4 - 10;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          height: width,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(path),
                fit: BoxFit.cover,
              )),
          child: Center(
              child: Text(
            txt,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ))),
    );
  }

  Widget buildMap() {
    return Container(
      height: 180,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("asset/map.png"),
        fit: BoxFit.cover,
      )),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("Price"),
              Text("RP. ${product.price} / Year",style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
            ],),
          
          GestureDetector(onTap: (){},child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            color: Colors.blue,),
            child: const Center(child: Text("Rent Now",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
          ),)
        ]),
      ),
    );
  }
}
