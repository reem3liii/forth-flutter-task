import 'package:flutter/material.dart';
import 'package:online_shop/models/product.dart';

List<ProductModel> trousers =[
  ProductModel('Classic trouser', 77, 'https://sc04.alicdn.com/kf/HTB1VeZSNHvpK1RjSZPiq6zmwXXat.jpg'),
  ProductModel('Gucci trouser', 100, 'https://img.brownsfashion.com/gucci-square-g-print-faille-flare-trousers_15244714_27836731_1000.jpg'),
  ProductModel('Boyfriend trouser', 85, 'https://st.mngbcn.com/rcs/pics/static/T5/fotos/S20/53025026_BB_B.jpg?ts=1576056871940&imwidth=388&imdensity=2'),
  ProductModel('Classic trouser', 90, 'https://ae01.alicdn.com/kf/H58687cae9deb4f539a4556a6163afbb0F/2020-New-Pure-Color-Men-s-Formal-Suit-Pants-Black-Wine-Red-Navy-Blue-Gray-Size.jpg_Q90.jpg_.webp'),
  ProductModel('Boyfriend trouser', 85, 'https://st.mngbcn.com/rcs/pics/static/T5/fotos/S20/57017693_TU_B.jpg?ts=1568972057187&imwidth=388&imdensity=2'),
];

class TrousersTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemBuilder: (BuildContext context, int index) => trousers[index].BuildProduct(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: trousers.length,
      ),
    );
  }
}



