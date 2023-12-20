import 'package:flutter/material.dart';
import 'package:mevivu_test/product.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({super.key, required this.product});
  final Product product;

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}