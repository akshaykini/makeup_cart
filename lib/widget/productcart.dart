import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:makeup_cart/model/ProductsModel.dart';

class Cart extends StatelessWidget {
   final Products products;
  const Cart({super.key,required this.products});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
      //   Card(
      //     elevation: 2,
      //     child: Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Stack(
      //             children: [
      //               Container(
      //                 height: 100,
      //                 width: double.infinity,
      //                 clipBehavior: Clip.antiAlias,
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(4),
      //                 ),
      //                 child: Image.network(
      //                     products.imageLink),
      //               )
      //             ],
      //           ),
      //           SizedBox(height: 20),
      //           Text(
      //             products.name,
      //             maxLines: 2,
      //             overflow: TextOverflow.ellipsis,
      //             style: TextStyle(
      //                 fontFamily: 'avenir', fontWeight: FontWeight.bold),
      //           ),
      //           SizedBox(height: 20),
      //           Container(
      //             child: Row(
      //               children: [Text(products.rating.toString()), Icon(Icons.star)],
      //             ),
      //           ),
      //           SizedBox(height: 20),
      //           Text(
      //             products.price.toString(),
      //             style: TextStyle(
      //                 fontFamily: 'avenir', fontWeight: FontWeight.bold),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),

  Card(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.all(5),
                      
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Image.network(
                                  products.imageLink,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                  
                                  
                                ),
                              ),
                              Text(
                                products.name,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    products.price.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                
            
      ],
    );
  }
}
