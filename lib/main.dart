import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final double circleSize = width / 2 - 16;
    return Container(
        color: Colors.white,
        child: Stack(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: circleSize,
              height: circleSize,
              margin: const EdgeInsets.only(top: 200),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.red,
                      spreadRadius: 0,
                      blurRadius: 100,
                      offset: Offset(0, 0))
                ],
              ),
            ),
            Container(
              width: circleSize,
              height: circleSize,
              margin: const EdgeInsets.only(top: 300),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue.withOpacity(0.6),
                      spreadRadius: 0,
                      blurRadius: 100,
                      offset: const Offset(0, 0))
                ],
              ),
            ),
          ]),
          Container(
              width: width,
              height: height,
              color: Colors.white.withOpacity(0.2),
              child: Container(
                  alignment: Alignment.topCenter,
                  margin: const EdgeInsets.only(top: 150),
                  child: Image.asset("assets/images/swift.png",
                      width: width / 2, height: width / 2)))
        ]));
  }
}
