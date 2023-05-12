import 'package:get/get.dart';
import 'package:makeup_cart/model/ProductsModel.dart';
import 'package:makeup_cart/services/api_services.dart';

class ProductController extends GetxController{

RxList<Products> productlist = <Products>[].obs;
@override
  void onInit() {
    // TODO: implement onInit
    fetchproducts();
    super.onInit();
  }

void fetchproducts() async {
  var productlistdata  = await APIServices.fetchProducts();

  if(productlistdata != null ){
    productlist.value = productlistdata;
  }
}


}