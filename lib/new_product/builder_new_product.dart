import 'package:flutter/material.dart';

import 'new_product_model.dart';

class BuilderNewProduct extends StatelessWidget {
   NewProduct newProduct;
   BuilderNewProduct({super.key , required this.newProduct});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
      ),
      child:
        Center(
          child: ListTile(
            leading: Image.asset(newProduct.image ,
            height: 100,),
            title: Text(newProduct.title),
            subtitle: const Text("hi hello group 62"),
            trailing: IconButton(onPressed: (){},
            icon:
            newProduct.favorite ? const Icon(Icons.favorite, color: Colors.red,)
            :const  Icon(Icons.favorite, color: Colors.grey,)),
          ),
        )
      // Column(children: [
      //   Image.asset(newProduct.image),
      //   Text(newProduct.title),
      //   IconButton(onPressed: (){},
      //       icon:
      //       newProduct.favorite ? const Icon(Icons.favorite, color: Colors.red,)
      //       :const Icon(Icons.favorite, color: Colors.grey,))
      // ],),
    );
  }
}
