import 'package:flutter/material.dart';
import 'package:online_shop/modules/home/jackets_tab.dart';
import 'package:online_shop/modules/home/shoes_tab.dart';
import 'package:online_shop/modules/home/t-shirts_tab.dart';
import 'package:online_shop/modules/home/trousers_tab.dart';

class DiscoverScreen extends StatefulWidget {
  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4 ,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ) ,
          title: Text(
            'DISCOVER',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.red,
              ),
              onPressed: (){},
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
               text: 'Jackets',

              ),
              Tab(
                text: 'Trousers',
              ),
              Tab(
                text: 'T-Shirts',
              ),
              Tab(
                text: 'Shoes',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            JacketsTab(),
            TrousersTab(),
            ShirtsTab(),
            ShoesTab(),
          ],

        ),
      ),
    );
  }
}
