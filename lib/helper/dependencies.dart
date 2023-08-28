import 'package:get/get.dart';

import '../controller/popular_product_controller.dart';
import '../controller/recommended_product_controller.dart';
import '../data/api/api_client.dart';
import '../data/repository/popular_product_rep.dart';
import '../data/repository/recommended_product_rep.dart';
import '../utils/app_constant.dart';

Future<void> init()async {

  // apiclient
  Get.lazyPut(() => ApiClient(appBaseUrl:AppConstants.BASE_URL));

// repository 
  Get.lazyPut(() => PopularProductRepo(apiClient:Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient:Get.find()));

  // controller
  Get.lazyPut(() => PopularProductController(popularProductRepo:Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo:Get.find()));
}