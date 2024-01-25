import 'package:get/get.dart';
import 'package:zorbaa2/apiintegration/service/httpservice.dart';

class ProductController extends GetxController{
  RxBool isLoading=true.obs;
  var productList=[].obs;

  @override
  void onInit(){
    loadProducts();
    super.onInit();
  }
  void loadProducts() async{
    try{
      isLoading(true);
      var product=await HttpService.fetchProducts();
      if(product!=null){
        productList.value=product;
      }
    }finally{
      isLoading(false);
    }
  }
}
// controller - productcontroller