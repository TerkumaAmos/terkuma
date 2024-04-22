import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:terkuma/components/my_product_tile.dart';
import 'package:terkuma/models/shop.dart';

import '../components/my_drawer.dart';

class ShopPage extends StatelessWidget {
   const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

  //access products in shop
  final products= context.watch<Shop>().shop;





    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text("Agber's Shop",
      ),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Colors.grey,
      body: ListView(
        children: [
          const SizedBox(height: 25,),
         


          // shop subtitle
    const Center(child: Text('Pick from a selected list of premium products only',
    style: TextStyle(color:Colors.black,
    fontWeight: FontWeight.bold,
    ),

    ),
    ),


          //product list
   SizedBox(
        height: 550,
        child: ListView.builder(
          itemCount: products.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(15),
          itemBuilder : (context, index){
           //get each individual product from shop 
            final product = products[index];
        
        
           //return as a product tile UI
          return MyProductTile(product: product);
        
        },
        
        
        ),
      ),


        ],
      )
      );
  }
}