class CategoryModel {
  final String? name, img;
  final int? id;

  CategoryModel({required this.name, this.id, this.img});
}

List<CategoryModel> lstCategory = [
  CategoryModel(name: "Toán"),
  CategoryModel(name: "Sử"),
  CategoryModel(name: "Địa")
];
