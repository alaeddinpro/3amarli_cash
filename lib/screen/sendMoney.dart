import 'package:cash1/screen/sendpa.dart';
import 'package:flutter/material.dart';

import '../wigdet/drawer.dart';

class Send extends StatefulWidget {
  const Send({Key? key}) : super(key: key);

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
  TextEditingController nom = TextEditingController();
  TextEditingController pnom = TextEditingController();
  TextEditingController adr = TextEditingController();

  String Prenom = '';
  String adrs = '';
  String Name = '';
  TextEditingController nom2 = TextEditingController();
  TextEditingController pnom2 = TextEditingController();
  TextEditingController adr2 = TextEditingController();

  String Prenom2 = '';
  String adrs2 = '';
  String Name2 = '';
  TextEditingController ncompt1 = TextEditingController();
  TextEditingController key1 = TextEditingController();
  TextEditingController sold1 = TextEditingController();

  String ncompt = '';
  String key = '';
  String sold = '';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Text(
              'معلومات خاصة بالمرسل',
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headline5,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 10),
                  width: 140,
                  child: TextField(
                    controller: nom,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xff6464F9),
                              width: 2,
                            )),
                        labelText: 'الاسم',
                        labelStyle: Theme.of(context).textTheme.headline4),
                    onChanged: (text) {
                      setState(() {
                        Name = text;
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  width: 140,
                  child: TextField(
                    controller: pnom,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xff6464F9),
                              width: 2,
                            )),
                        labelText: 'اللقب',
                        labelStyle: Theme.of(context).textTheme.headline4),
                    onChanged: (text) {
                      setState(() {
                        Prenom = text;
                      });
                    },
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: TextField(
                controller: adr,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Color(0xff6464F9),
                          width: 2,
                        )),
                    labelText: 'العنوان',
                    labelStyle: Theme.of(context).textTheme.headline4),
                onChanged: (text) {
                  setState(() {
                    adrs = text;
                  });
                },
              ),
            ),
            Text(
              'معلومات خاصة بالمستفيد',
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headline5,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 10),
                  width: 140,
                  child: TextField(
                    controller: nom2,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xff6464F9),
                              width: 2,
                            )),
                        labelText: 'الاسم',
                        labelStyle: Theme.of(context).textTheme.headline4),
                    onChanged: (text) {
                      setState(() {
                        Name2 = text;
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  width: 140,
                  child: TextField(
                    controller: pnom2,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xff6464F9),
                              width: 2,
                            )),
                        labelText: 'اللقب',
                        labelStyle: Theme.of(context).textTheme.headline4),
                    onChanged: (text) {
                      setState(() {
                        Prenom2 = text;
                      });
                    },
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: TextField(
                controller: adr2,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Color(0xff6464F9),
                          width: 2,
                        )),
                    labelText: 'العنوان',
                    labelStyle: Theme.of(context).textTheme.headline4),
                onChanged: (text) {
                  setState(() {
                    adrs2 = text;
                  });
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  // padding: EdgeInsets.only(right: 10),
                  // width: 260,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: ncompt1,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xff6464F9),
                              width: 2,
                            )),
                        labelText: 'حساب رقم',
                        labelStyle: Theme.of(context).textTheme.headline4),
                    onChanged: (text) {
                      setState(() {
                        ncompt = text;
                      });
                    },
                  ),
                ),
                Expanded(
                  // padding: EdgeInsets.only(right: 10),
                  // width: 140,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: key1,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xff6464F9),
                              width: 2,
                            )),
                        labelText: 'المفتاح',
                        labelStyle: Theme.of(context).textTheme.headline4),
                    onChanged: (text) {
                      setState(() {
                        key = text;
                      });
                    },
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: sold1,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Color(0xff6464F9),
                          width: 2,
                        )),
                    labelText: 'المبلغ بالأرقام',
                    labelStyle: Theme.of(context).textTheme.headline4),
                onChanged: (text) {
                  setState(() {
                    sold = text;
                  });
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              color: Color(0xff4FE4C1),
              child: Text(
                'اطبع',
                style: TextStyle(
                    fontFamily: 'bein', fontSize: 22, color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Sendp()));
              },
            )
          ]),
        ),
      ),
    );
  }
}
