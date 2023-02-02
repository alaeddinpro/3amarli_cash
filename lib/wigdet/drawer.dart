import 'package:flutter/material.dart';

import '../main.dart';
import '../screen/creeccp.dart';
import '../screen/ordercart.dart';
import '../screen/sendpa.dart';

class Drawerslid extends StatelessWidget {
  const Drawerslid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 53, 53, 103)),
          padding: EdgeInsets.zero,
          child: Text("القائمة الجانبية",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'bein', fontSize: 24))),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(children: [
          ListTile(
              title: Text(
                'تحويل رصيدك الى كتابة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'bein',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MyApp()));
              }),
          ListTile(
            title: Text(
              'ارسال الاموال لحساب اخر',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'bein',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Sendp()));
            },
          ),
          ListTile(
            title: Text(
              'وثائق فتح حساب بريدي ccp',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'bein',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Creec()));
            },
          ),
          ListTile(
            title: Text(
              'طلب بطاقة ذهبية',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'bein',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Order()));
            },
          ),
          // ListTile(
          //   title: Text(
          //     'الوضع المظلم',
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       fontFamily: 'bein',
          //       fontSize: 20,
          //       color: Colors.white,
          //     ),
          //   ),
          //   onTap: () {
          //     Navigator.of(context)
          //         .push(MaterialPageRoute(builder: (context) => MyApp()));
          //   },
          // ),
          // ListTile(
          //   title: Text(
          //     'donate',
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       fontFamily: 'bein',
          //       fontSize: 20,
          //       color: Colors.white,
          //     ),
          //   ),
          //   onTap: () {
          //     Navigator.of(context)
          //         .push(MaterialPageRoute(builder: (context) => Donate()));
          //   },
          // ),
        ]),
      )
    ]);
  }
}
