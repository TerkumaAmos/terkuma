import 'package:flutter/material.dart';


class CartPage extends StatelessWidget {
   const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.grey,
        elevation:0,
        foregroundColor:Colors.black,
        title:const Text('Cart page'),
      ),
      backgroundColor: Colors.grey,
    );
  }
}