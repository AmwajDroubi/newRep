import 'package:flutter/material.dart';
import 'package:food/models/product_model.dart';

class FavoriteP extends StatefulWidget {
  final List<ProductModel> favoriteItems;
  final Function(ProductModel) removeFavorite;

  FavoriteP({
    super.key,
    required this.favoriteItems,
    required this.removeFavorite,
  });

  @override
  State<FavoriteP> createState() => _FavoritePState();
}

class _FavoritePState extends State<FavoriteP> {
  // Create a map to hold counts for each item.
  Map<ProductModel, int> itemCounts = {};

  @override
  void initState() {
    super.initState();
    // Initialize the counts for each favorite item.
    for (var item in widget.favoriteItems) {
      itemCounts[item] = 0;
    }
  }

  void rem(ProductModel item) {
    setState(() {
      if (itemCounts[item]! > 0) itemCounts[item] = itemCounts[item]! - 1;
    });
  }

  void ad(ProductModel item) {
    setState(() {
      itemCounts[item] = itemCounts[item]! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite Items',
          style: TextStyle(
            fontSize: 35,
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
            fontFamily: "EduTASBeginner",
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          final item = widget.favoriteItems[index];
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                        fontSize: 23,
                        color: Color.fromARGB(255, 65, 165, 132),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20, left: 160),
                      child: Container(
                        height: 50,
                        color: Colors.blue[200],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () => rem(item),
                              icon: Icon(
                                Icons.remove,
                                size: 18,
                              ),
                            ),
                            Text(
                              "${itemCounts[item]}",
                              style: TextStyle(fontSize: 20),
                            ),
                            IconButton(
                              onPressed: () => ad(item),
                              icon: Icon(
                                Icons.add,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "${item.price}",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 206, 51, 98),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: widget.favoriteItems.length,
      ),
    );
  }
}
