import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/popular_product_controller.dart';
import 'package:shop_app/controller/recommended_product_controller.dart';
import 'package:shop_app/pages/food/popular_food_detail.dart';
import 'package:shop_app/pages/food/recommended_food_detail.dart';
import 'package:shop_app/pages/home/food_page_body.dart';
import 'package:shop_app/routes/route_helper.dart';
import 'helper/dependencies.dart' as dep;
import 'pages/home/main_food_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     
      home: const MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
