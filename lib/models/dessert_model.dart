import 'package:flutter/material.dart';

class Dessert {
  String imageUrl;
  String name;
  String Description;

  Dessert(this.imageUrl, this.name, this.Description);
}

List<Dessert> desserts = [
  Dessert('Black Raspberry Ombre Cake ',
      'Four layers of Black Raspberry Ombre Cake ,covered and filled with Vanilla Icing and garnished with chocolate mousee. '),
  Dessert(
      imageUrl: 'assets/images/brownie_cheesecake.jpeg',
      name: 'Brownie Cheesecake',
      Description:
          'Famously decadent fudge brownie backed into vannila cheesecake with a chocolate cookie crumb crust and garnished with chocolate mousse'),
  Dessert(
      imageUrl: 'assets/images/lemon-cream-cake.jpg',
      name: 'Lemon Italian Cream Cake',
      Description:
          'Refreshing lemon cream fills this delightful cream cake,which is topped with vanilla cake crumbs and a dusting of sugar'),
  Dessert(
      imageUrl: 'assets/images/choco-cake.jpg',
      name: 'Towering Chocolate Cake',
      Description:
          'Four gigantic chocolate cake are filled and covered with chocolate butter icing and finished with chocolate cookie crumbs '),
  Dessert(
      imageUrl: 'assets/images/tiramisu.jpg',
      name: 'Tiramisu',
      Description:
          'A light and flavorful traditional Italian Dessert,alternating layers of mascarpone cheese and espresso-soaked lady fingers with a touch of liqueur'),
  Dessert(
    imageUrl: 'assets/images/canoli.jpg',
    name: 'Canoli',
    Description: '',
  ),
  Dessert(
      imageUrl: 'assets/images/offering.jpg',
      name: 'Offering',
      Description:
          'Cafe Late,Cafe Mocha, Cappuccino,Coffee House Bland Arabica,Espresso, Tea ')
];
