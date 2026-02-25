import 'package:flutter/material.dart';

class FoodListPage extends StatelessWidget {
  final List<Map<String, String>> foodItems = [
    {
      "name": "Burger",
      "image": "https://cdn-icons-png.flaticon.com/512/3075/3075977.png",
      "desc": "Delicious cheesy burger"
    },
    {
      "name": "Pizza",
      "image": "https://cdn-icons-png.flaticon.com/512/3132/3132693.png",
      "desc": "Hot Italian pizza"
    },
    {
      "name": "Pasta",
      "image": "https://cdn-icons-png.flaticon.com/512/3480/3480823.png",
      "desc": "Creamy pasta"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Posts"),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(foodItems[index]["image"]!, width: 50),
              title: Text(foodItems[index]["name"]!),
              subtitle: Text(foodItems[index]["desc"]!),
            ),
          );
        },
      ),
    );
  }
}
