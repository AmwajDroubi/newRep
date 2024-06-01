// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food/models/category_model.dart';

class ProductModel {
  final String id;
  final String name;
  final String descreption;

  final String imageUrl;
  final double price;
  final CategoryModel category;

  ProductModel({
    required this.id,
    required this.name,
    this.descreption =
        "Customers described it as very delicious. I advise you to buy it",
    required this.imageUrl,
    required this.price,
    required this.category,
  });
}

List<ProductModel> dummyProduct = [
  ProductModel(
    id: "1",
    category: dummyCategories[0],
    name: 'جبنة بيضا',
    imageUrl: 'asset/images/white.jpeg',
    price: 3,
  ),
  ProductModel(
    id: "2",
    category: dummyCategories[0],
    name: 'جبنة صفرا',
    imageUrl: 'asset/images/yellow.jpg',
    price: 3,
  ),
  ProductModel(
    id: "3",
    category: dummyCategories[0],
    name: 'بيتزا',
    imageUrl: 'asset/images/23.jpg',
    price: 3,
  ),
  ProductModel(
    id: "4",
    category: dummyCategories[0],
    name: ' زعترأخضر',
    imageUrl: 'asset/images/222.jpg',
    price: 10,
  ),
  ProductModel(
    id: "5",
    category: dummyCategories[0],
    name: "زعتر دقة",
    imageUrl: 'asset/images/333.jpg',
    price: 2,
  ),
  ProductModel(
    id: "6",
    category: dummyCategories[0],
    name: ' صفيحة ',
    imageUrl: 'asset/images/21.jpg',
    price: 4,
  ),
  ProductModel(
    id: "7",
    category: dummyCategories[0],
    name: ' نقانق ',
    imageUrl: 'asset/images/24.jpeg',
    price: 3,
  ),
  ProductModel(
    id: "8",
    category: dummyCategories[0],
    name: 'حلية نحل ',
    imageUrl: 'asset/images/13.jpg',
    price: 15,
  ),
  ProductModel(
    id: "9",
    category: dummyCategories[2],
    name: ' كروسان',
    imageUrl: 'asset/images/111.jpg',
    price: 25,
  ),
  ProductModel(
    id: "10",
    category: dummyCategories[2],
    name: ' كعك التمر',
    imageUrl: 'asset/images/100.jpg',
    price: 30,
  ),
  ProductModel(
    id: "11",
    category: dummyCategories[1],
    name: ' كيك الأناناس',
    imageUrl: 'asset/images/101.jpg',
    price: 50,
  ),
  ProductModel(
    id: "12",
    category: dummyCategories[1],
    name: ' كيك الشوكولاتة',
    imageUrl: 'asset/images/102.jpg',
    price: 50,
  ),
  ProductModel(
    id: "13",
    category: dummyCategories[1],
    name: ' كيك اللوتس',
    imageUrl: 'asset/images/103.jpg',
    price: 80,
  ),
  ProductModel(
    id: "14",
    category: dummyCategories[2],
    name: '  برازق',
    imageUrl: 'asset/images/104.jpg',
    price: 30,
  ),
  ProductModel(
    id: "15",
    category: dummyCategories[3],
    name: '  قطايف',
    imageUrl: 'asset/images/105.jpg',
    price: 10,
  ),
  ProductModel(
    id: "16",
    category: dummyCategories[2],
    name: '  بيتيفور',
    imageUrl: 'asset/images/106.jpg',
    price: 30,
  ),
  ProductModel(
    id: "17",
    category: dummyCategories[2],
    name: '  كرات الشوكولاتة',
    imageUrl: 'asset/images/107.jpg',
    price: 28,
  ),
  ProductModel(
    id: "18",
    category: dummyCategories[2],
    name: ' معمول ',
    imageUrl: 'asset/images/109.jpg',
    price: 35,
  ),
  ProductModel(
    id: "19",
    category: dummyCategories[1],
    name: ' كيك الأناناس',
    imageUrl: 'asset/images/101.jpg',
    price: 50,
  ),
  ProductModel(
    id: "20",
    category: dummyCategories[1],
    name: ' كيك الكيندر',
    imageUrl: 'asset/images/110.jpg',
    price: 80,
  ),
  ProductModel(
    id: "21",
    category: dummyCategories[1],
    name: ' كيك الجالكسي',
    imageUrl: 'asset/images/112.jpg',
    price: 100,
  ),
  ProductModel(
    id: "22",
    category: dummyCategories[1],
    name: ' كيك الكرميل',
    imageUrl: 'asset/images/113.jpg',
    price: 50,
  ),
  ProductModel(
    id: "23",
    category: dummyCategories[1],
    name: ' كيك الفراولة',
    imageUrl: 'asset/images/114.jpg',
    price: 70,
  ),
  ProductModel(
    id: "24",
    category: dummyCategories[1],
    name: ' كيك الأوريو',
    imageUrl: 'asset/images/115.jpg',
    price: 80,
  ),
  ProductModel(
    id: "25",
    category: dummyCategories[1],
    name: 'تشيز كيك فراولة',
    imageUrl: 'asset/images/116.jpg',
    price: 100,
  ),
  ProductModel(
    id: "26",
    category: dummyCategories[1],
    name: ' كيك كيت كات',
    imageUrl: 'asset/images/117.jpg',
    price: 90,
  ),
  ProductModel(
    id: "27",
    category: dummyCategories[3],
    name: '  هريسة حلبة',
    imageUrl: 'asset/images/118.jpg',
    price: 25,
  ),
  ProductModel(
    id: "28",
    category: dummyCategories[1],
    name: ' تشيز كيك لزتس',
    imageUrl: 'asset/images/120.jpg',
    price: 100,
  ),
  ProductModel(
    id: "28",
    category: dummyCategories[1],
    name: '   دونات',
    imageUrl: 'asset/images/121.jpg',
    price: 6,
  ),
  ProductModel(
    id: "28",
    category: dummyCategories[2],
    name: '  كعك أساور',
    imageUrl: 'asset/images/122.jpg',
    price: 30,
  ),
];
