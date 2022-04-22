import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('AppBar', textDirection: TextDirection.ltr),
        leading: const Icon(Icons.search),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
       children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Column(
            children: const [
              Text(
                "Andoid App",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/android.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 50,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            children: const [
              Text(
                "Flutter",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/flutter.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 40,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            children: const [
              Text(
                "Ios App",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/ios.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
