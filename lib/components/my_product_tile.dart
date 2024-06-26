import 'package:flutter/material.dart';
import 'package:terkuma/models/product.dart';



class MyProductTile extends StatelessWidget {
  final Product product;


  const MyProductTile({super.key,
  required this.product
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(12),

      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width:300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        
        
        children: [
        // product image 
      AspectRatio(
      aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(color: Colors.black,
          borderRadius: BorderRadius.circular(12),
          
          
          ),
          width: double.infinity,
          padding: const EdgeInsets.all(25),
          
          
          
          
          child: const Icon(Icons.favorite,
          
          
          ),
        
        
        
        
        ),
      ),





     const SizedBox(height: 25),
     //product name
     Text(
      product. name,
      style: const TextStyle(fontWeight: FontWeight.bold,
      fontSize: 20, 
      
      
      
      ),
      
      
      
      
      ),
      const SizedBox(height: 10,),

     //product description
     Text(product.description),
     const SizedBox(height:25),


     //product price +add to cart button 
   Text(product.price.toStringAsFixed(2),


   
   
   
   ),




      ],)
    );
  }
}