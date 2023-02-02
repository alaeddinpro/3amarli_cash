import 'package:flutter/material.dart';

import '../wigdet/drawer.dart';

class Creec extends StatelessWidget {
  const Creec({Key? key}) : super(key: key);

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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                ' فتح حساب بريدي ccp',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'من اجل فتح حساب بريدي '
                ' خاص بك لابد من ان تتوجه الى مقر بريد الجزائر في بلديتك مصحوبا بالملف التالي:',
                maxLines: 3,
                style: Theme.of(context).textTheme.headline4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: [
                        TextSpan(
                            text: '1-',
                            style: TextStyle(color: Color(0xff4FE4C1))),
                        TextSpan(text: 'ملأ استمارة مقدمة من طرف مصالح البريد')
                      ])),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: [
                        TextSpan(
                            text: '2-',
                            style: TextStyle(color: Color(0xff4FE4C1))),
                        TextSpan(
                            text: 'نسخة من بطاقة التعريف و أو رخصة السياقة')
                      ])),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: [
                        TextSpan(
                            text: '3-',
                            style: TextStyle(color: Color(0xff4FE4C1))),
                        TextSpan(text: 'شهادة اقامة لصاحب الطلب')
                      ])),
                ],
              ),
            ])));
  }
}
