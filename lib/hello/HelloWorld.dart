import 'package:flutter/material.dart';

class HelloWorld extends StatefulWidget {
  const HelloWorld({super.key});

  @override
  State<HelloWorld> createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          image: const DecorationImage(
              image: AssetImage('assets/yoriichi.png'), fit: BoxFit.cover)),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text("John"), Text("Ali"), Text("Dafe")],
      ),
    );
  }
}
