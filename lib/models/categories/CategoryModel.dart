import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable{
  int id = 0;
  String? name= "";
  String? image="";

  static CategoryModel? fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    CategoryModel dataBean = CategoryModel();
    dataBean.id = map['id'];
    dataBean.name = map['name'];
    dataBean.image = map['image'];
    return dataBean;
  }

  Map toJson() => {
    "id": id,
    "name": name,
    "image": image,
  };

  @override
  List<Object?> get props => [id,name,image];

}
