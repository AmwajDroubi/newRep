import 'package:flutter/material.dart';
import 'package:food/models/product_model.dart';
import 'package:food/pages/details.dart';

class DescriptionP extends StatefulWidget {
  final ProductModel product;
  DescriptionP({
    super.key,
    required this.product,
  });

  @override
  State<DescriptionP> createState() => _DescriptionPState();
}

class _DescriptionPState extends State<DescriptionP> {
  int c = 0;

  void rem() {
    setState(() {
      if (c > 0) {
        c--;
      }
    });
  }

  void ad() {
    setState(() {
      if (c >= 0) {
        c++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 375,
                color: Colors.grey[200],
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back),
                        ),
                        //   Icon(Icons.arrow_back),
                        SizedBox(
                          width: 300,
                        ),
                        Icon(Icons.favorite_outline)
                      ],
                    ),
                    Container(
                      height: 250,
                      width: 270,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: Image.asset(
                          widget.product.imageUrl,
                          // width: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 180,
                    child: Text(
                      widget.product.name,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: rem,
                            icon: Icon(
                              Icons.remove,
                              size: 22,
                            )),
                        Text(
                          "$c",
                          style: TextStyle(fontSize: 22),
                        ),
                        IconButton(
                            onPressed: ad,
                            icon: Icon(
                              Icons.add,
                              size: 22,
                            ))
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: DetailsSize(),
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                widget.product.descreption,
                style: TextStyle(fontSize: 22),
              ),
              Container(
                child: Text(
                  "Read more",
                  style: TextStyle(fontSize: 19, color: Colors.blue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height: 90,
                  color: Colors.grey[200],
                  child: Row(children: [
                    Expanded(
                      flex: 1,
                      // width: 60,
                      child: Text(
                        "${widget.product.price}",
                        style: TextStyle(fontSize: 29),
                      ),
                    ),
                 
                    Expanded(
                      flex: 2,
                      child: Container(
                        // color: Colors.blue[200],
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[200]),
                          onPressed: () {},
                          child: Text(
                            "Check Out",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
