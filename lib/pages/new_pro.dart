import 'package:flutter/material.dart';
import 'package:food/models/profile_model.dart';

class NewProfile extends StatelessWidget {
  const NewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                child: Image.asset(
                  "asset/images/f.webp",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180.0),
                child: Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "asset/images/women1.jpg",
                        width: 150,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Amwaj Droubi",
            style: TextStyle(
                fontSize: 30,
                fontFamily: "EduTASBeginner",
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(Icons.phone, size: 25, color: Colors.grey[600]),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "059*******",
                  style: TextStyle(fontSize: 22, color: Colors.grey[600]),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
            child: Row(
              children: [
                Icon(Icons.location_on_rounded,
                    size: 25, color: Colors.grey[600]),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Tulkarm-Shoufa",
                  style: TextStyle(fontSize: 22, color: Colors.grey[600]),
                )
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: listProfile.length,
              itemBuilder: (_, int index) {
                final prof = listProfile[index];
                return Column(
                  children: [
                    ListTile(
                        onTap: () {},
                        textColor: Colors.grey[900],
                        iconColor: Colors.blue[500],
                        title: Text(
                          prof.t,
                          style: TextStyle(fontSize: 20),
                        ),
                        leading: Icon(prof.icon1)),
                  ],
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
