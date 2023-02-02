import 'package:flutter/material.dart';

class Sendp extends StatelessWidget {
  const Sendp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'عمـرلـي شــاك',
          style: TextStyle(fontSize: 24, fontFamily: 'bein'),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff6464F9),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
          // fit: BoxFit.cover,
          image: AssetImage('images/02.jpg'),
        )),
      ),
    );
  }
}
