import 'package:flutter/material.dart';
import 'package:terkuma/components/my_list_tile.dart';


class MyDrawer extends StatelessWidget {
   const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Colors.grey,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
       Column(children: [
 const DrawerHeader(
          child: Center(
            child: Icon(
            Icons.shopping_bag,
            size:72,
            color:Colors.black,
            ),
          ),),

       const SizedBox(height: 25,),

      //shop title
       MyListTile(
        text:'shop',
       icon:Icons.home, 
        onTap:()=>Navigator.pop(context),
        ),
      MyListTile(
        text:'Cart',
       icon:Icons.shopping_cart, 
        onTap:(){
   // pop drawer first
   Navigator.pop(context);




   //go to cart page
    Navigator.pushNamed(context,'/cart_page');

        },
        ),
        
        
  
       ],),
        Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: MyListTile(
          text:'Exit',
                 icon:Icons.logout, 
          onTap:() => Navigator.pushNamedAndRemoveUntil(
            context, '/intro_page',
           (route) => false)
          ),
        ),
        
  




      //cart title




      //exit the shop











      ],)
    );
  }
}