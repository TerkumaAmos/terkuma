import 'package:flutter/material.dart';
import 'package:terkuma/components/my_button.dart';

class  IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
         const Icon(Icons.shopping_bag,




         size: 72,
         color:Colors.black,

         
         ),
         const SizedBox(height:50),
        
          //title
         const Text(
          "Agber's Shop", 
          style: TextStyle(
          fontWeight:FontWeight.bold,
        fontSize:24,
        color: Colors.grey,
      
         ),),

        const SizedBox(height:50),
        
        
          //subtitle
                const Text(
                  'Premium Quality Products Only', 
                  style: TextStyle(color:Colors.grey,
                  fontWeight: FontWeight.bold,

                  ),
                  ),
        const SizedBox(height:50),
          //button
          MyButton(onTap: () => Navigator.popAndPushNamed(context, '/shop_page'),
           child: const Icon(Icons.arrow_forward,),
           
           ),
          ],
          ),
      ),
    );
  }
}