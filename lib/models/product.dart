import 'package:flutter/material.dart';

class ProductModel{

  final String name;
  final double price;
  final String pic;

  ProductModel(this.name, this.price, this.pic);

  Widget BuildProduct ()=> Container(
    color: Colors.grey,
    padding: EdgeInsets.all(2),
    child: Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Image(
          image: NetworkImage(pic),
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
        Container(
            color: Colors.white.withOpacity(0.6),
            width: 200,
            padding: EdgeInsets.all(10),
            child: Text(
              '$name\n\$$price',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
        ),
      ],
    ),
  );

}