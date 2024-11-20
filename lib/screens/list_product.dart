import 'package:flutter/material.dart';
import 'package:happy_farmer_shop/models/product.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:happy_farmer_shop/screens/product_detail.dart';
import 'package:provider/provider.dart';

class ListProductPage extends StatefulWidget {
  const ListProductPage({super.key});

  @override
  State<ListProductPage> createState() => _ListProductPageState();
}

class _ListProductPageState extends State<ListProductPage> {
  Future<List<Product>> fetchProduct(CookieRequest request) async {
    final response = await request.get('http://127.0.0.1:8000/json/');

    // Melakukan decode response menjadi bentuk json
    var data = response;

    // Melakukan konversi data json menjadi object MoodEntry
    List<Product> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(Product.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada produk pada Happy Farmer Shop.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  margin:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${snapshot.data![index].fields.name}",
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.description}"),
                      const SizedBox(height: 10),
                      Text("Harga: ${snapshot.data![index].fields.price}"),
                      const SizedBox(height: 10),
                      Text("Kuantitas: ${snapshot.data![index].fields.quantity}"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailPage(product: snapshot.data![index]),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Theme.of(context).colorScheme.primary,
                        ),
                        child: const Text('View Details'),
                      ),
                    ],
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}