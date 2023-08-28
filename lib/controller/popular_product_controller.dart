import 'package:get/get.dart';
import 'package:shop_app/data/repository/popular_product_rep.dart';

import '../models/product_model.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList=[];
  List<dynamic> get popularProductList => _popularProductList;
  
  bool _isLoaded = false;
  bool get isLoaded=>_isLoaded;

  Future<void> getPopularProductList()async {
    Response response = await popularProductRepo.getPopularProductList();
// print(response.statusCode);
      if(response.statusCode==200){
        print("got product");
        _popularProductList=[];
        _popularProductList.addAll(Product.fromJson(response.body).products);
        // print(_popularProductList);
        _isLoaded=true;
        update();

      }else{

      }
  }
}