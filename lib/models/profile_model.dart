import 'package:flutter/material.dart';

class ProfileModel {
  final IconData icon1;
  final String t;
  

  ProfileModel({required this.icon1, required this.t});
}

List<ProfileModel> listProfile = [
  ProfileModel(t: "Change profile data", icon1: Icons.person),
  ProfileModel(t: "Change phone number", icon1: Icons.phone),
  ProfileModel(t: "Change location", icon1: Icons.location_on),
  ProfileModel(t: "Log out", icon1: Icons.logout),
];
