import 'package:get/get.dart';

import '../data/repository/recommended_product_rep.dart';
import '../models/product_model.dart';

class RecommendedProductController extends GetxController{
  final RecommendedProductRepo recommendedProductRepo;

  RecommendedProductController({required this.recommendedProductRepo});

  List<dynamic> _recommendedProductList=[];
  List<dynamic> get recommendedProductList => _recommendedProductList;
  
  bool _isLoaded = false;
  bool get isLoaded=>_isLoaded;

  Future<void> getRecommendedProductList()async {
    Response response = await recommendedProductRepo.getRecommendedProductList();
// print(response.statusCode);
      if(response.statusCode==200){
        print("got product");
        _recommendedProductList=[];
        _recommendedProductList.addAll(Product.fromJson(response.body).products);
        // print(_popularProductList);
        _isLoaded=true;
        update();

      }else{

      }
  }
}