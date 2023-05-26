import 'package:flutter/material.dart';

class OptionModel {
  final String title;
  final IconData icon;
  final bool isNew;

  OptionModel(this.title, this.icon, {this.isNew = false});
}
