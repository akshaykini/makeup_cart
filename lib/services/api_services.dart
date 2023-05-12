

import 'package:http/http.dart' as http;
import 'package:makeup_cart/model/ProductsModel.dart';

class APIServices {
  static Future<List<Products>> fetchProducts() async {
    var data;
    var response = await http.get(Uri.parse(
        'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));


      if (response.statusCode == 200) {
        var jsonstring = response.body;
          return productsFromJson(jsonstring);
        
      }
   
   return productsFromJson(data);
  }
  
}
