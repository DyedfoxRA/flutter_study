import 'package:flutter/material.dart';
import 'package:flutter_study/models/dish_model.dart';

int Firstin(List<Dish> dishes, type) {
  dishes.sort((a, b) => b.type.compareTo(a.type));
  int k = 0;
  int i = 0;
  while ((k == 0) && (i != dishes.length)) {
    if (dishes[i].type == type) {
      k = i;
    }
    i++;
  }
  return k;
}

int Count(List<Dish> dishes, String type) {
  dishes.sort((a, b) => b.type.compareTo(a.type));
  int k = 0;
  for (int i = 0; i < dishes.length; i++) {
    if (dishes[i].type == type) {
      k++;
    }
  }
  return k;
}
