import 'package:flutter/material.dart';
class Pages {
String name;
String route;

Pages(this.name, this.route);
}

List<Pages> pages = [
  Pages('Starter', '/starter'),
  Pages('Salad', '/salad'),
  Pages('Soup', '/soup'),
  Pages('Main Course', '/main_course'),
  Pages('Dessert', '/dessert'),
  Pages('Warm Beverage', '/warm_beverage'),
  Pages('Cold Beverage', '/cold_beverage'),
];