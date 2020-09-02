import 'package:flutter/material.dart';

class Dessert { // ctrl +alt + o
  String imageUrl;
  String name;
  String description;

  Dessert(this.imageUrl, this.name, this.description);
}

List<Dessert> desserts = [
  Dessert(
    'assets/images/raspberry_cake.jpg',
    'Black Raspberry Ombre Cake ',
    'Four layers of Black Raspberry Ombre Cake ,covered and filled with Vanilla Icing and garnished with chocolate mousee. ',
  ),
  Dessert(
    'assets/images/brownie_cheesecake.jpeg',
    'Brownie Cheesecake',
    'Famously decadent fudge brownie backed into vannila cheesecake with a chocolate cookie crumb crust and garnished with chocolate mousse',
  ),
  Dessert(
    'assets/images/lemon-cream-cake.jpg',
    'Lemon Italian Cream Cake',
    'Refreshing lemon cream fills this delightful cream cake,which is topped with vanilla cake crumbs and a dusting of sugar',
  ),
  Dessert(
    'assets/images/choco-cake.jpg',
    'Towering Chocolate Cake',
    'Four gigantic chocolate cake are filled and covered with chocolate butter icing and finished with chocolate cookie crumbs ',
  ),
  Dessert(
    'assets/images/tiramisu.jpg',
    'Tiramisu',
    'A light and flavorful traditional Italian Dessert,alternating layers of mascarpone cheese and espresso-soaked lady fingers with a touch of liqueur',
  ),
  Dessert(
    'assets/images/canoli.jpg',
    'Canoli',
    '',
  ),
  Dessert(
    'assets/images/offering.jpg',
    'Offering',
    'Cafe Late,Cafe Mocha, Cappuccino,Coffee House Bland Arabica,Espresso, Tea ',
  )
];
