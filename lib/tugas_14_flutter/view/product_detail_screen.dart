import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ppkd_b_2/tugas_14_flutter/model/users_store_model.dart';

class ProductDetailScreen extends StatelessWidget {
  final UsersStore product;
  // static const String id = '/product_detail_screen';

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title ?? 'Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.network(product.image ?? '', height: 200)),
            SizedBox(height: 16),
            Text(
              product.title ?? '',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 8),
            Text('USD \$${product.price}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(product.description ?? '', textAlign: TextAlign.justify),
          ],
        ),
      ),
    );
  }
}
