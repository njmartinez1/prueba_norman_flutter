import 'package:flutter/material.dart';

class PromoModel {
  final Color? bgColor;
  final Color txtColor;
  final String title;
  final String description;

  PromoModel(
    this.title,
    this.description,
    this.bgColor,
    this.txtColor,
  );
}
