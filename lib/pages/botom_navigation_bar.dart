import 'package:flutter/material.dart';
import 'package:food/models/product_model.dart';
import 'package:food/pages/favorite_page.dart';
import 'package:food/pages/new_pro.dart';
import 'home_page.dart'; // Update the import if needed

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomBar> {
  int selectedIndex = 0;
  List<ProductModel> favoriteItems = [];

  void addFavorite(ProductModel product) {
    setState(() {
      favoriteItems.add(product);
    });
  }

  void removeFavorite(ProductModel product) {
    setState(() {
      favoriteItems.remove(product);
    });
  }

  List<Widget> navB() {
    return [
      HomeP(
        favoriteItems: favoriteItems,
        addFavorite: addFavorite,
        removeFavorite: removeFavorite,
      ),
      FavoriteP(
        favoriteItems: favoriteItems,
        removeFavorite: removeFavorite,
      ),
      const NewProfile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: navB()[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
