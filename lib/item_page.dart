import 'dart:js';

import 'package:flutter/material.dart';
import 'package:praktikum_uts/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  ItemPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag:
                  'itemImage${item.name}', // Set tag yang sama dengan yang ada di HomePage
              child: Image.asset(
                'assets/${item.image}',
                height: 300,
              ),
            ),
            Text('Item Name: ${item.name}'),
            Text('Item Price: ${item.price.toString()}'),
            Text('Item Stock: ${item.stock.toString()}'),
            Text('Item Rating: ${item.rating.toString()}'),
          ],
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
