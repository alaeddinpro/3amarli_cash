// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../wigdet/drawer.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  final url = 'https://edcarte.poste.dz';

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
              ' طلب البطاقة الذهبية ',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'من اجل طلب بطاقتك الذهبية بدون التنقل الى مصالح بريد الجزائر عبر الانترنت فقط عبر الولوج الى الموقع الرسمي لبريد الجزائر المرفق أدناه وملأ المعلومات الخاصة بك',
              maxLines: 5,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'ملاحظة ستصلك رسالة قصيرة عبر الهاتف النقال تؤكد وصول البطاقة في مركز البريد التابع له ,حوالي بعد 20يوم من تاريخ طلبها',
              maxLines: 3,
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              color: Color(0xff4FE4C1),
              child: Text(
                'الرابط',
                style: TextStyle(
                    fontFamily: 'bein', fontSize: 22, color: Colors.white),
              ),
              onPressed: () {
                launch(url);
              },
            )
          ]),
        ));
  }
}
