import 'package:flutter/material.dart';
import 'package:food/models/category_model.dart';
import 'package:food/models/product_model.dart';
import 'package:favorite_button/favorite_button.dart';

class HomeP extends StatefulWidget {
  final List<ProductModel> favoriteItems;
  final Function(ProductModel) addFavorite;
  final Function(ProductModel) removeFavorite;

  const HomeP({
    super.key,
    required this.favoriteItems,
    required this.addFavorite,
    required this.removeFavorite,
  });

  @override
  State<HomeP> createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  String? selectedCategoryId;
  late List<ProductModel> filteredProduct;

  @override
  void initState() {
    super.initState();
    filteredProduct = dummyProduct;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Current Location",
                style: TextStyle(
                    fontSize: 27, color: Color.fromARGB(66, 37, 1, 83)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.green,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Palestine, Tulkarm",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              size: 35,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child: Image.asset("asset/images/11.jpg"),
              ),
              const SizedBox(height: 17),
              SizedBox(
                height: 160,
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    final category = dummyCategories[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0, bottom: 40),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (selectedCategoryId == category.id) {
                              selectedCategoryId = null;
                              filteredProduct = dummyProduct;
                            } else {
                              selectedCategoryId = category.id;
                              filteredProduct = dummyProduct
                                  .where((product) =>
                                      product.category.id == selectedCategoryId)
                                  .toList();
                            }
                          });
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: selectedCategoryId == category.id
                                ? Colors.blue
                                : Color.fromARGB(255, 238, 236, 236),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(children: [
                            Image.asset(
                              category.imageUrl,
                              height: 80,
                              width: 80,
                            ),
                            const SizedBox(height: 5, width: 90),
                            Text(
                              category.name,
                              style: TextStyle(
                                fontSize: 20,
                                color: selectedCategoryId == category.id
                                    ? Colors.white
                                    : null,
                              ),
                            )
                          ]),
                        ),
                      ),
                    );
                  },
                  itemCount: dummyCategories.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              GridView.builder(
                itemCount: filteredProduct.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 11,
                    crossAxisCount: 2),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  final product = filteredProduct[index];
                  return InkWell(
                    onTap: () {},
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(255, 238, 236, 236)),
                      child: Stack(
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 30, right: 30, top: 15),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(9),
                                    child: Image.asset(
                                      product.imageUrl,
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                ),
                                Text(
                                  product.name,
                                  style: const TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 65, 165, 132)),
                                ),
                                Text("${product.price}",
                                    style: const TextStyle(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 206, 51, 98))),
                              ]),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: FavoriteButton(
                              iconSize: 50,
                              iconColor: Colors.blue,
                              isFavorite:
                                  widget.favoriteItems.contains(product),
                              valueChanged: (_isFavorite) {
                                setState(() {
                                  if (_isFavorite) {
                                    widget.addFavorite(product);
                                  } else {
                                    widget.removeFavorite(product);
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
