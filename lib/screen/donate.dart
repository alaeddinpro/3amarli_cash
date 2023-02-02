// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../wigdet/drawer.dart';

class Donate extends StatelessWidget {
  const Donate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(backgroundColor: Color(0xff474789), child: Drawerslid()),
        appBar: AppBar(
          title: Text(
            'عمـرلـي شــاك',
            style: TextStyle(fontSize: 24, fontFamily: 'bein'),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff6464F9),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Text(
              ' الدعم المادي',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'لمن يريد دعمنا ماديا الرابط مرفق أدناه',
              style: Theme.of(context).textTheme.headline4,
            ),
            Image.asset(
              'images/01.jpg',
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
                color: Color(0xff4FE4C1),
                child: Text(
                  'دعم',
                  style: TextStyle(
                      fontFamily: 'bein', fontSize: 22, color: Colors.white),
                ),
                onPressed: () async {
                  final url = 'https://www.paypal.com/paypalme/Alaapro19';
                  // ignore: deprecated_member_use
                  if (await canLaunch(url)) {
                    // ignore: deprecated_member_use
                    await launch(url);
                  }
                })
          ]),
        ));
  }
}
