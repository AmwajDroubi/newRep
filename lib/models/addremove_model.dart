import 'package:flutter/material.dart';

class AddRemoveModel {
  final IconData icon1;
  final String t;
  final IconData icon2;

  AddRemoveModel(this.icon2, {required this.icon1, required this.t});
}

List<AddRemoveModel> adrmov = [
  AddRemoveModel(Icons.add, icon1: Icons.remove, t: "t")

];
