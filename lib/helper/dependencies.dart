import 'package:get/get.dart';

import '../controller/popular_product_controller.dart';
import '../data/api/api_client.dart';
import '../data/repository/popular_product_rep.dart';

Future<void> init()async {

  // apiclient
  Get.lazyPut(() => ApiClient(appBaseUrl:"https://mvs.bslmeiyu.com"));

// repository 
  Get.lazyPut(() => PopularProductRepo(apiClient:Get.find()));

  // controller
  Get.lazyPut(() => PopularProductController(popularProductRepo:Get.find()));

}