
import 'package:first_project62/cart_list_page.dart';
import 'package:first_project62/product_model.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
   Products products;
   ProductPage({super.key,required this.products});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
int counter  =0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:const  BorderRadius.only(
                      bottomLeft : Radius.circular(40),
                      bottomRight: Radius.circular(40)
                    
                  ),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage( widget.products.pic
                    ),
                 ),
                ),
          ),
          
                 // Image.asset( widget.products.pic ,fit: BoxFit.fill, ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.products.name, style: const TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
                    //  Text("price : ${widget.products.price ?? ""}         "),
                      const SizedBox(width: 15,),
                       IconButton(onPressed: (){}, icon: widget.products.like ?
                       const Icon(Icons.favorite,color: Colors.red,size: 30, ):
                       const Icon(Icons.favorite,color: Colors.grey,size: 30, )
                       ),
                    ],
                  ) ,
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align( alignment: Alignment.topLeft,
                    child: Text("price : ${widget.products.price ?? ""}       " ,
                      style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.grey
                    ),)),
              ),
             const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: IconButton(onPressed: (){
                      setState(() {
                        widget.products.counter = counter++ ;
                      });
          
                    }, icon: const Icon(Icons.add),),
                  ),
                   Text("${widget.products.counter ?? 0 }" ,style: const TextStyle(
                    fontSize: 20,
                      fontWeight: FontWeight.w500),),
                  CircleAvatar(
                    radius: 30,
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          widget.products.counter = counter-- ;
                        });
          
                      },
                      icon:  const Center(child: Icon(Icons.minimize))),
                    ),
          
                ],
              ),
                    const SizedBox(height: 50,),
                    ElevatedButton
                      (   style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.teal,
                      // shadowColor: Colors.greenAccent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      minimumSize: const Size(100, 40),
                      //////// HERE
                    ),
                        onPressed: (){
                          setState(() {
                            listCartProduct.add(widget.products);
                          });
                          // pic
                          // price
                          // counter
                          // CartPage(
                          //   price: widget.products.price,
                          //   pic: widget.products.pic,
                          //   counter: counter,
                          //   nameProduct: widget.products.name,);
                        },
                        child:const Text("Add TO Cart", style: TextStyle(
                          fontSize: 20
                        ),)),
              const SizedBox(height: 30,),
              // Align(
              //   alignment: Alignment.topLeft,
              //   child: Row(
              //     children: [
              //       TextButton(onPressed: (){
              //         Navigator.push(context,
              //             MaterialPageRoute(builder: (_)=>
              //             CartPage(price: widget.products.price,pic: widget.products.pic,
              //               nameProduct: widget.products.name,
              //               counter: counter,)));},
              //           child:const  Text("ShowCart" , style: TextStyle(
              //             fontSize: 20 ,color: Colors.teal, fontWeight: FontWeight.w600
              //           ),)),
              //       const Icon(Icons.shopping_cart , color: Colors.teal,),
              //     ],
              //   ),
              // ),
          
                ],),
        ),
            ),

    );
  }
}
