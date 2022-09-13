import 'package:starterproject/models/categories/CategoryModel.dart';
import 'package:starterproject/repositories/CategoryRepository.dart';

class CategoryProvider {
  final CategoryRepository _categoryRepository;

  CategoryProvider(this._categoryRepository);

  Future<List<CategoryModel>> getCategories() async {
    var categories = await _categoryRepository.getCategories();
    print("dataitems " + categories!.length.toString());

    return categories.toList();
  }
}
