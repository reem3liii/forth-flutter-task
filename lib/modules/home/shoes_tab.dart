import 'package:flutter/material.dart';
import 'package:online_shop/models/product.dart';

List<ProductModel>  shoes =[
ProductModel('Sport shoes', 120, 'https://m.media-amazon.com/images/I/71D9ImsvEtL._UY500_.jpg'),
ProductModel('Adidas shoes', 250, 'https://i.pinimg.com/originals/b6/9c/b4/b69cb48adb88f3f39a6d6d0e4c7ae375.jpg'),
ProductModel('Leather shoes', 98, 'https://cf.shopee.ph/file/654083c3736848a2a3d4d4410757cc19'),
ProductModel('Nike shoes', 280, 'https://www.amylkaracosta.com/images/shoes/nike%20shoes%20women-721eix.jpg'),
ProductModel('Sneakers shoes', 100, 'https://ph-live-05.slatic.net/p/f68114dafddd08bfac2bc4a357d34566.jpg_2200x2200q80.jpg_.webp'),
];

class ShoesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemBuilder: (BuildContext context, int index) => shoes[index].BuildProduct(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: shoes.length,
      ),
    );
  }
}



