import 'package:first_project62/product_model.dart';
import 'package:first_project62/widgets/default_text.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  // String nameProduct;
  // double? price;
  // String pic;
  // int counter;
  List<Products> products = [];

  CartPage({super.key, required this.products
      // this.price ,required this.counter,required this.pic ,required this.nameProduct
      });
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double total = 0;
  @override
  void initState() {
    for (var i in widget.products) {
      total = total + (i.price * i.counter!);
    }
    print(total);
    super.initState();
  }

  String name = "Cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  itemCount: widget.products.length,
                  itemBuilder: (context, index) {
                    // widget.total = (widget.products[index].counter! * widget.products[index].price)!;
                    //  print("${widget.total}");
                    return Container(
                      //padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                          leading: Image.asset(widget.products[index].pic),
                          title: Text(widget.products[index].name,
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          subtitle: Text(
                              "${widget.products[index].price * widget.products[index].counter!}"),
                          trailing: Text(
                            "${widget.products[index].counter}",
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          )),

                      // ListView.separated(
                      //   shrinkWrap: true,
                      //     separatorBuilder: (context, index )=>
                      //         const SizedBox(height: 20,),
                      //     itemCount: widget.counter,
                      //   itemBuilder: (context, index)=> ListTile(
                      //     leading: Image.asset(widget.pic),
                      //     title: Text(widget.nameProduct),
                      //     subtitle: Text("${widget.price ?? 0.0}"),
                      //     trailing: Icon(Icons.add),
                      //   ),
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
              // Text("Total : $total\$",
              //   style: const TextStyle(
              //     fontSize: 30 , fontWeight: FontWeight.bold ,
              //     color: Colors.teal ,
              //   ),)
              DefaultText(
                text: 'Total : $total\$',
                color: Colors.red,
                fontSize: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
