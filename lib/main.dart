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
      title: 'Task 2',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsetsDirectional.only(start: 20, top: 10),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "MENU",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "HOT DRINKS",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Partition",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 30),
              MyWidget(),
              SizedBox(height: 15),
              MyWidget(),
              SizedBox(height: 15),
              MyWidget(),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("MSP",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: 340,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black, width: 1.3)
            ),
        padding: EdgeInsetsDirectional.only(top: 10),
        child: const Row(children: [
          Row(
            children: [
              Icon(
                Icons.coffee,
                color: Colors.black,
                size: 40,
              ),
              SizedBox(
                width: 130,
              ),
            ],
          ),
          Column(
            children: [
              Column(
                children: [
                  Text(
                    "CAPPUCCINO",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "40 L.E",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.favorite_sharp,
                        color: Colors.red,
                        size: 20,
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ]));
  }
}
