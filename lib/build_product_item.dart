import 'package:first_project62/productPage.dart';
import 'package:first_project62/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuilderProduct extends StatelessWidget {
  Products products;
   BuilderProduct({super.key ,required this.products});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (_)=>
                ProductPage(products: products)));
      },
      child: Container(
        // height:  300,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
              // image:  DecorationImage(
              //     fit: BoxFit.fitHeight,
              //     image: AssetImage(products.pic))
              ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(products.pic ,height: 100, fit: BoxFit.cover,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(products.name, style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey[700]
                ),),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.favorite, color: Colors.red,))
              ],
            ),
            Text("price : ${products.price ?? ""}         "),
          ],
        ),
          ),
    );
  }
}
