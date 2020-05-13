import 'package:flutter/cupertino.dart';

class ProductModel {
  final String name;
  final String ingredients;
  final String description;
  final double price;
  final String category;
  final String image;
  final List<String> baseIngredients;
  final String note;
  final String warning;
  final String calories;
  final String timer;
  final String portion;

  ProductModel(
      {this.name,
      this.ingredients,
      this.description,
      this.price,
      this.category,
      this.image,
      this.baseIngredients,
      this.note,
      this.warning,
      this.calories,
      this.timer,
      this.portion});
}

final List<ProductModel> products = [
  ProductModel(
    name: 'Raviolis',
    ingredients: 'pollo',
    category: 'pasta fresca',
    description: 'lorem ipsum dolor',
    price: 0.00,
    baseIngredients: ['Harina', 'Huevo'],
    image: 'assets/images/products/raviolis.jpg',
    note: 'Todos productos son fresca y sin cocinar, para que la puedas convinar con tus salsas favoritas',
    warning: 'Avisar si tiene alguna reacción alergica a un ingrediente.',
    calories: '250 kcal',
    timer: '30 minutos',
    portion: '2 personas'
  ),
  ProductModel(
    name: 'Raviolis',
    ingredients: 'Espincas con queso',
    category: 'pasta fresca',
    description: 'lorem ipsum dolor',
    price: 0.00,
    baseIngredients: ['Harina', 'Huevo'],
    image: 'assets/images/products/raviolis.jpg',
    note: 'Todos productos son fresca y sin cocinar, para que la puedas convinar con tus salsas favoritas.',
    warning: 'Avisar si tiene alguna reacción alergica a un ingrediente.',
    calories: '250 kcal',
    timer: '30 minutos',
    portion: '2 personas'
  ),
  ProductModel(
    name: 'Raviolis',
    ingredients: 'Carne de res',
    category: 'pasta fresca',
    description: 'lorem ipsum dolor',
    price: 0.00,
    baseIngredients: ['Harina', 'Huevo'],
    image: 'assets/images/products/raviolis.jpg',
    note: 'Todos productos son fresca y sin cocinar, para que la puedas convinar con tus salsas favoritas.',
    warning: 'Avisar si tiene alguna reacción alergica a un ingrediente.',
    calories: '250 kcal',
    timer: '30 minutos',
    portion: '2 personas'
  ),
  ProductModel(
    name: 'Ñoquis',
    ingredients: 'con base de papa',
    category: 'pasta fresca',
    description: 'Comer ñoquis (gnocchi en italiano) es como darle un mordisco a una pequeña nube y ademas un plato que puede estar en tan solo media hora e ideal para ser preparados con una gran variedad de salsas.',
    price: 0.00,
    baseIngredients: ['Papas', 'Harina', 'Huevo'],
    image: 'assets/images/products/gnocchi.jpg',
    note: 'Todos productos son fresca y sin cocinar, para que la puedas convinar con tus salsas favoritas.',
    warning: 'Avisar si tiene alguna reacción alergica a un ingrediente.',
    calories: '250 kcal',
    timer: '30 minutos',
    portion: '2 personas'
  ),
];
