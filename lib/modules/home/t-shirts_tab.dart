import 'package:flutter/material.dart';
import 'package:online_shop/models/product.dart';

List<ProductModel> shirts =[
  ProductModel('Polo t-shirt', 99, 'https://images.ikrix.com/product_images/original/polo-ralph-lauren-polo-shirts-pique-cotton-t-shirt-with-contrasting-piping-00000193418f00s011.jpg'),
  ProductModel('Cotton t-shirt', 85, 'https://image.made-in-china.com/202f0j00fZiRArPUqaku/High-Quality-Mens-Golf-Polo-Cotton-T-Shirt-Polo-T-Shirt-Wholesale.jpg'),
  ProductModel('Puma t-shirt', 78, 'https://cdn.fashiola.in/L74701878/puma-t-shirt-girls-cotone.jpg'),
  ProductModel('Adidas t-shirt', 69, 'https://www.80scasualclassics.co.uk/images/adidas-originals-trefoil-t-shirt-black-p10617-65886_image.jpg'),
  ProductModel('Basic t-shirt', 50, 'https://i.pinimg.com/originals/eb/24/c4/eb24c472b003a6b1ca6f9509b37b8116.jpg'),
];

class ShirtsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemBuilder: (BuildContext context, int index) => shirts[index].BuildProduct(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: shirts.length,
      ),
    );
  }
}



