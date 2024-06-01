import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_project62/cart_list_page.dart';
import 'package:first_project62/product_model.dart';
import 'package:first_project62/samsung_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'build_product_item.dart';
import 'huawei_page.dart';
import 'productPage.dart';
import 'new_product/builder_new_product.dart';
import 'new_product/new_product_model.dart';

class HomePage extends StatelessWidget{
    HomePage({super.key, });
 final List<Widget> images=[
    Image.asset("assets/images/pic3.jpeg"),
    Image.asset("assets/images/pic4.jpeg"),
    Image.asset("assets/images/pic3.jpeg"),
    Image.asset("assets/images/pic4.jpeg")
  ];
    final List<String> image=[
     "assets/images/pic3.jpeg",
      "assets/images/pic4.jpeg",
      "assets/images/pic3.jpeg",
      "assets/images/pic4.jpeg"
    ];
    // final List <Widget> pages= [
    //   IphonePage(),
    //   SamsungPage(),
    //   HuaweiPage(),
    //   HuaweiPage(),
    // ];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: [
                  IconButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_)=>
                        CartPage(products: listCartProduct )));
                    },
                        // CartPage(price: widget.products.price,pic: widget.products.pic,
                        //   nameProduct: widget.products.name,
                        //   counter: counter,)));},
                      icon:
                      //     const  Text("ShowCart" , style: TextStyle(
                      //   fontSize: 20 ,color: Colors.teal, fontWeight: FontWeight.w600
                      // ),)),
                  const Icon(Icons.shopping_cart , color: Colors.teal,),)
          ],
          title:const  Text("HomePage", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),),
        body:   Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const Text("Offers",
                    style: TextStyle(fontWeight: FontWeight.bold ,
                    fontSize: 30
                    ),),
                  // SizedBox(
                  //   height: 100,
                  //   width: 100,
                  //   child: Text("hi"),
                  // ),
                  // Container(
                  //   height: 300 ,
                  //   width:  300,
                  //  decoration: BoxDecoration(
                  //   // color: Colors.pink,
                  //    image:const  DecorationImage(
                  //       fit: BoxFit.cover,
                  //     image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6OaLn3ef9iBONw4ILf0FHckiDi_WilM2zXw&s"),
                  //      //AssetImage("assets/images/pic1.jpg",),
                  //      //NetworkImage()  url // link
                  //      //AssetImage(), // assets // mn folder flutter
                  //    ),
                  //    borderRadius: BorderRadius.circular(10),
                  //    gradient: const LinearGradient(
                  //         end: Alignment.bottomRight,
                  //         begin: Alignment.bottomLeft,
                  //        colors: [
                  //          Colors.pink,
                  //          Colors.amber,
                  //          Colors.green,
                  //        ]
                  //    )
                  //  ),
                  // ),
                  // SizedBox(
                  //
                  //   height: 300,
                  //   child: Swiper(
                  //     pagination: const SwiperPagination(
                  //     ),
                  //    // control: const SwiperControl(),
                  //     //indicatorLayout: PageIndicatorLayout.COLOR,
                  //     autoplay: true,
                  //     itemBuilder : (context , index){
                  //       return Image.asset(images[index]) ;
                  //     },
                  //     itemCount: images.length ,
                  //   ),
                  // ),
                CarouselSlider(
                  options: CarouselOptions(
                      height: 300,
                      autoPlay :true
                  ),
                  items: images,
                ),
                 const  Text("Category", style: TextStyle(fontWeight: FontWeight.bold ,
                     fontSize: 30
                 ),),
                  // widget
                 //  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6OaLn3ef9iBONw4ILf0FHckiDi_WilM2zXw&s",),
                 //  const  SizedBox(height: 20,),
                 //  Image.asset("assets/images/pic1.jpg", width: 100,height: 100 ,fit: BoxFit.cover,),
                 // // Image(image:   NetworkImage("data:image/jpeg;base64,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"))
                 //  //AssetImage(),)
                 const SizedBox(height: 10,),

                  //   SingleChildScrollView(
                  //     scrollDirection : Axis.horizontal,
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         Container(
                  //           height: 200,
                  //           width: 150,
                  //           decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(20),
                  //             color: Colors.grey[200],
                  //           ),
                  //         ),
                  //         Container(
                  //           height: 200,
                  //           width: 150,
                  //           decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(20),
                  //             color: Colors.grey[200],
                  //           ),
                  //         ),
                  //         Container(
                  //           height: 200,
                  //           width: 150,
                  //           decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(20),
                  //             color: Colors.grey[200],
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // const SizedBox(height: 10,),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Container(
                  //       height: 200,
                  //       width: 150,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         color: Colors.grey[200],
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 200,
                  //       width: 150,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         color: Colors.grey[200],
                  //       ),
                  //     )
                  //   ],
                  // )
                  //

                  // SizedBox(
                  //   height: 200,
                  //   width: double.infinity,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     shrinkWrap: true,
                  //     children: [
                  //       Container(
                  //             height: 100,
                  //             width: 100,
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(20),
                  //               color: Colors.pink[200],
                  //             ),),
                  //       Container(
                  //         height: 100,
                  //         width: 100,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(20),
                  //           color: Colors.purple[200],
                  //         ),),
                  //       Container(
                  //         height: 100,
                  //         width: 100,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(20),
                  //           color: Colors.purpleAccent[200],
                  //         ),),
                  //       Container(
                  //         height: 100,
                  //         width: 100,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(20),
                  //           color: Colors.grey[200],
                  //         ),),
                  //       Container(
                  //         height: 100,
                  //         width: 100,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(20),
                  //           color: Colors.green[200],
                  //         ),),
                  //       Container(
                  //         height: 100,
                  //         width: 100,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(20),
                  //           color: Colors.green[200],
                  //         ),),
                  //     ],
                  //   ),
                  // )
              // SizedBox(
              //   height: 200,
              //   width:  400,
              //   child: ListView.separated(
              //       scrollDirection: Axis.horizontal,
              //       shrinkWrap: true,
              //       itemCount: image.length,
              //       itemBuilder: (context, index){
              //         return InkWell(
              //           onTap: (){
              //             Navigator.push(context,
              //                 MaterialPageRoute(builder: (context)=>
              //                  pages[index] ));
              //           },
              //           child: Container(
              //                       height: 100,
              //                       width: 100,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         //color: Colors.pink[200],
              //                         image: DecorationImage(
              //                           fit: BoxFit.fitHeight,
              //                           image: AssetImage(image[index])
              //                         )
              //                       ),),
              //         );
              //       },
              //       separatorBuilder: (BuildContext context, int index)=>
              //       const SizedBox(width: 20,),
              //
              //
              //   ),
              // )
              //
              //     SizedBox(
              //       height: 200,
              //       width:  400,
              //       child: ListView.separated(
              //         scrollDirection: Axis.horizontal,
              //         shrinkWrap: true,
              //         itemCount: itemProduct.length,
              //         separatorBuilder: (BuildContext context, int index)=>
              //         const SizedBox(width: 20,),
              //         itemBuilder: (context, index){
              //           return BuilderProduct(products: itemProduct[index],);
              //         },
              //       ),
              //     ),
              //  const SizedBox(height: 20,),
              //    SizedBox(
              //      height: 100,
              //      width: 500,
              //      child: ListView.separated(
              //        scrollDirection: Axis.horizontal,
              //        shrinkWrap: true,
              //          separatorBuilder: (context, index)=> const SizedBox(width: 10,),
              //          itemCount: newProductList.length,
              //          itemBuilder: (context, index){
              //             return BuilderNewProduct(newProduct: newProductList[index],);
              //                  },
              //      ),
              //    )

             SizedBox(
               height: 600,
               child: GridView.builder(
                 shrinkWrap: true,
                   itemCount: itemProduct.length ,
                   gridDelegate: const
                   SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                     mainAxisSpacing: 20.0,
                   ),
                   itemBuilder: (context, index){
                     return BuilderProduct(products: itemProduct[index]);
                   }
               ),
             ),

              
              
              
                ],
              ),
            ),
          ),
        ) ,
      );
  }

}