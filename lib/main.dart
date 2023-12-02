import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Alignment alignment = Alignment.centerLeft;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Please wait ..",
              style: TextStyle(
                letterSpacing: 3,
              ),
            ),
            AnimatedContainer(
              width: MediaQuery.of(context).size.width,
              alignment: alignment,
              duration: const Duration(milliseconds: 400),
              // child: ColorFiltered(
              // colorFilter: const ColorFilter.mode(
              //   Colors.blue, // Change this to the desired color
              //   BlendMode.srcATop,
              // ),
              child: Lottie.asset(
                "asset/car2.json",
                width: 150,
              ),
            ),
            // ),
            const Text("we are cuurebtly checking our records"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    alignment = alignment == Alignment.centerLeft
                        ? Alignment.centerRight
                        : Alignment.centerLeft;
                  });
                },
                child: const Text("cliquer içi!"))
          ],
        )
      ]),
    );
  }
}
