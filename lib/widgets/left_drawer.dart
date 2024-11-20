import 'package:flutter/material.dart';
import 'package:happy_farmer_shop/screens/list_product.dart';
import 'package:happy_farmer_shop/screens/menu.dart';
import 'package:happy_farmer_shop/screens/add_product_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Happy Farmer Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Ayo cari bahan bertani di sini!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke MoodEntryFormPage
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const AddProductFormPage(),
                  )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag_outlined),
            title: const Text('Daftar Produk'),
            onTap: () {
              // Route menu ke halaman mood
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListProductPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}