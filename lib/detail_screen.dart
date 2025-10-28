import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String productTitle;
  final String productImage;
  final String productDescription;

  const DetailScreen({
    super.key,
    required this.productTitle,
    required this.productImage,
    required this.productDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          productTitle,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(productImage, height: 220, fit: BoxFit.contain),
            const SizedBox(height: 20),
            Text(
              productDescription,
              style: const TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
