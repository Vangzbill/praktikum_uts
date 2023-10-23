import 'package:praktikum_uts/item.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_uts/item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Gula', price: 5000, image: 'gula.png', stock: 100, rating: 4.5),
    Item(
        name: 'Garam', price: 2000, image: 'garam.png', stock: 50, rating: 3.9),
    // Add more items with photo, stock, and rating here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemPage(item: item),
                  ),
                );
              },
              child: Card(
                child: Column(
                  children: [
                    Hero(
                      tag:
                          'itemImage${item.name}', // Set tag yang sama dengan yang ada di ItemPage
                      child: Image.asset(
                        'assets/${item.image}',
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text('Price: \$${item.price.toString()}'),
                    Text('Stock: ${item.stock.toString()}'),
                    Text('Rating: ${item.rating.toString()}'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(10.0), // Berikan padding 10 pixel
          child: Text(
            'Sabilla Luthfi Rahmadhan - NIM: 2141720122',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
