import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "profile",
          style: TextStyle(fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
            child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            "asset/images/woman.png",
            height: 130,
            width: 130,
          ),
        )),
        SizedBox(
          height: 20,
        ),
        Text(
          "Amwaj Droubi",
          style: TextStyle(
              fontSize: 35,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Row(children: [
                  Icon(
                    Icons.edit,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "  تعديل الملف الشخصي",
                    style: TextStyle(
                      fontSize: 27,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                    size: 30,
                  ),
                ]),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {},
                child: Row(children: [
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "        تعديل رقم الهاتف",
                    style: TextStyle(
                      fontSize: 27,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                    size: 30,
                  ),
                ]),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {},
                child: Row(children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "              تعديل الموقع",
                    style: TextStyle(
                      fontSize: 27,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                    size: 30,
                  ),
                ]),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {},
                child: Row(children: [
                  Icon(
                    Icons.settings,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "                   الاعدادات",
                    style: TextStyle(
                      fontSize: 27,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                    size: 30,
                  ),
                ]),
              ),
              SizedBox(height: 25),
              InkWell(
                onTap: () {},
                child: Row(children: [
                  Icon(
                    Icons.logout_rounded,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "           تسجيل الخروج",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 27,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                    size: 30,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
