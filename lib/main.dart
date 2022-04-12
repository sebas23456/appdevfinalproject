import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App Dev Final Project',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title:  const Text("Login Page"), centerTitle: true,
        ),
            body:const MyHomePage(),
        ),

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
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: buildImage()
        ),

        Align(
          alignment: Alignment.centerLeft,
          child: buildFields(),
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: buildButton()
        )

      ],
    );
  }

  Widget buildImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset('assets/images/AppDevFinalLogo.jpg', height: 200, width: 400,),
    );
  }

  Widget buildFields() {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Text("User Name:", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 14)),
        ),

        Padding(
          padding: EdgeInsets.all(15.0),
          child: Text("Password:", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 14)),
        ),

      ],
    );
  }

  Widget buildButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Text("Next page Yooo", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 14)),
        ),

        Padding(
          padding: EdgeInsets.all(15.0),
          child: Text("Make an account", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 14)),
        ),
      ],
    );
  }
}