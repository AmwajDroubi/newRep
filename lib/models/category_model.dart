class CategoryModel {
  final String id;
  final String name;
  final String imageUrl;

  CategoryModel({required this.id, required this.name, required this.imageUrl});
}

List<CategoryModel> dummyCategories = [
  CategoryModel(id: '1', name: 'معجنات', imageUrl: 'asset/images/pizza.png'),
  CategoryModel(id: '2', name: 'كيك', imageUrl: 'asset/images/cake.png'),
  CategoryModel(
      id: '3', name: 'كعك وبيتيفور', imageUrl: 'asset/images/bread.png'),
  CategoryModel(id: '4', name: 'منوعات', imageUrl: 'asset/images/rye.png'),
];
