import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'food Demo',
      home: Food(),
    );
  }
}

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 20,
              child: Container(
                height: 400,
                width: MediaQuery.of(context).size.width * .92,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 197, 195, 195)
                        .withOpacity(0.7),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(Icons.menu),
                      ),
                      const Text(
                        "Delicious Food",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const Text("we mood fresh and health"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.food_bank),
                          Icon(Icons.heart_broken),
                          Icon(Icons.icecream),
                          Icon(Icons.no_food),
                        ],
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
