import 'package:flutter/material.dart';
import 'package:terkuma/models/product.dart';


class Shop extends ChangeNotifier{
  // products for sale
final List<Product> _shop =[
//product 1
Product(
  name: "product 1",
 price: 89.90, 
 description: "item description..",
 // imagePath: imagePath,
  ),
  //product 2
Product(
  name: "product 2",
 price: 89.90, 
 description: "item description..",
 // imagePath: imagePath,
  ),
  //product 3
Product(
  name: "product 3",
 price: 89.90, 
 description: "item description..",
 // imagePath: imagePath,
  ),
  //product 4
Product(
  name: "product 4",
 price: 89.90, 
 description: "item description..",
 // imagePath: imagePath,
  ),
  //product 5
Product(
  name: "product 5",
 price: 89.90, 
 description: "item description..",
 // imagePath: imagePath,
  ),

];


// user cart
final List<Product> _cart = [];

//get product list
List<Product> get shop => _shop;

//get user cart
List<Product> get cart => _cart;


//add item to cart
void addToCart(Product item)  {
  _cart.add(item);
  notifyListeners();
}


//remove item from cart
void removeFromCart(Product item ){
  _cart.remove(item);
  notifyListeners();
}




}