import 'package:flutter/material.dart';
import 'package:mevivu_test/components/combobox.dart';
import 'package:mevivu_test/components/list_near.dart';
import 'package:mevivu_test/components/list_product.dart';
import 'package:mevivu_test/components/nav.dart';
import 'package:mevivu_test/components/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            const ComboBox(),
            Stack(
        children: [
          const Icon(Icons.notifications_outlined),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
          ],),
          const Search(),
          const Nav(),
          ListNear(),
          const ListProduct()
        ]),
      ),
    );
  }
}