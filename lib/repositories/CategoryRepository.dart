import 'package:get/get.dart';
import 'package:starterproject/models/CommanResponse.dart';
import 'package:starterproject/models/categories/CategoryModel.dart';
import 'package:starterproject/shared/typedef.dart';
import 'package:starterproject/services/networking/ApiService.dart';

class CategoryRepository {
  final ApiService _apiService;

  CategoryRepository(this._apiService);

  Future<List<CategoryModel>?> getCategories() async {
    var response = await _apiService.get(endpoint: '/39ad142847a77e4abe82');
    CommanResponse comanresponse = CommanResponse.fromMap(response)!;
    return comanresponse.data;
  }
}
