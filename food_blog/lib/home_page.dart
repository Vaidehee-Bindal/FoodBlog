import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'food_list_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userEmail = "";

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  void loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userEmail = prefs.getString('userEmail') ?? "Guest";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foodie's Hub"),
        backgroundColor: Color.fromRGBO(255, 120, 80, 1),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome, $userEmail",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodListPage()),
                );
              },
              child: Text("View Food Posts"),
            ),
          ],
        ),
      ),
    );
  }
}
