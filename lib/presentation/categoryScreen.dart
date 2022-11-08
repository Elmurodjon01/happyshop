import 'package:flutter/material.dart';
import 'package:happyshop/constants/constants.dart';
import 'package:happyshop/widgets/categoriesBox.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kbottomNavColor,
        title: const Text('Categories'),
      ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing:10,
        mainAxisSpacing: 10,
        children: [
         CategoryCard(image: 'https://images.unsplash.com/photo-1605348532760-6753d2c43329?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80',
             label: 'Nike',),
          CategoryCard(
            image: 'https://images.unsplash.com/photo-1615064779799-df1bfcc66ed0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
            label: 'Adidas',
          ),
          CategoryCard(
            image: 'https://images.unsplash.com/photo-1590779033100-9f60a05a013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
            label: 'Groceries',
          ),
          CategoryCard(
            image: 'https://images.unsplash.com/photo-1567401893414-76b7b1e5a7a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
            label: 'Woman collection',
          ),
          CategoryCard(
            image: 'https://images.unsplash.com/photo-1615064779799-df1bfcc66ed0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
            label: 'Adidas',
          ),
          CategoryCard(image: 'https://images.unsplash.com/photo-1605348532760-6753d2c43329?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80',
            label: 'Nike',),
          CategoryCard(
            image: 'https://images.unsplash.com/photo-1590779033100-9f60a05a013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
            label: 'Groceries',
          ),
          CategoryCard(
            image: 'https://images.unsplash.com/photo-1567401893414-76b7b1e5a7a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
            label: 'Woman collection',
          ),
        ],
      ),
    );
  }
}


//
// GridView.count(
// primary: false,
// padding: const EdgeInsets.all(10),
// crossAxisSpacing: 10,
// mainAxisSpacing: 10,
// crossAxisCount: 2,
// children: [