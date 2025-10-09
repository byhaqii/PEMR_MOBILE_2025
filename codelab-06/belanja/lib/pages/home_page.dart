import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Iphone 17 Air',
        price: 16500000,
        imagePath: 'assets/images/17air.jpg',
        stock: 25,
        rating: 4.4,
      ),
      Item(
        name: 'Iphone 17',
        price: 19000000,
        imagePath: 'assets/images/17.jpg',
        stock: 50,
        rating: 4.7,
      ),
      Item(
        name: 'Iphone 17 Pro',
        price: 24500000,
        imagePath: 'assets/images/17pro.jpg',
        stock: 30,
        rating: 4.9,
      ),
      Item(
        name: 'Iphone 17 Pro Max',
        price: 50000,
        imagePath: 'assets/images/17promax.jpg',
        stock: 10,
        rating: 4.5,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Baws Store'),
        backgroundColor: const Color.fromARGB(255, 151, 151, 151),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // dua kolom
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            // make cards a bit taller to accommodate increased spacing
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Hero(
                      tag: item.name,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12)),
                        child: Image.asset(
                          item.imagePath,
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text('Rp ${item.price}'),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 18),
                        Text(item.rating.toString()),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text('Stok: ${item.stock}'),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Muhammad Rizal Al Baihaqi - 2341720225',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}