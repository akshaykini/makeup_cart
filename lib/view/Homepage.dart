import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:makeup_cart/controller/Product_con.dart';
import 'package:makeup_cart/widget/productcart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProductController _productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
          title: Text('Shop Cart'),
          backgroundColor: Colors.yellow[900],
          centerTitle: true,
        ),
        body: Container(
          color: Colors.yellow[500],
          
          child: 
            Obx(() =>
               GridView.builder(
                
                shrinkWrap: true,
                    itemCount: _productController.productlist.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 180,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        
                        mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Cart(
                        
                        
                          products: _productController.productlist[index]);
                          
                    },
                  ),
            ),
          
          
      ),
      ),
    );
  }
}
