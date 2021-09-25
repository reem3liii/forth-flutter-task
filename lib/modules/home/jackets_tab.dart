import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/models/product.dart';

List<ProductModel> jackets =[
  ProductModel('Mens leather jacket', 80, 'https://markhorco.com/51/leather-jacket.jpg'),
  ProductModel('Ladies leather jacket', 110, 'https://5.imimg.com/data5/TF/PD/RW/SELLER-23546735/ladies-leather-jacket-500x500.jpg'),
  ProductModel('Hoodie jacket', 95, 'https://cf.shopee.ph/file/b12509df5340bbd6bcfffa2ad48f3110'),
  ProductModel('Bomber jacket', 78, 'https://cdn-images.farfetch-contents.com/12/27/19/07/12271907_11648268_1000.jpg'),
  ProductModel('Denim jacket', 106, 'https://img.joomcdn.net/94dbc89bdc6cdcdf6482894f33d534679a700318_original.jpeg'),
];

class JacketsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index)=> jackets[index].BuildProduct(),
      itemCount: jackets.length,
    );
  }
}



