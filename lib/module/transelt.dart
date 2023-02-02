import 'package:flutter/material.dart';

import 'package:number_to_word_arabic/number_to_word_arabic.dart';
// import 'package:arabic_numbers/arabic_numbers.dart';

class Transelat extends StatefulWidget {
  const Transelat({Key? key}) : super(key: key);

  @override
  State<Transelat> createState() => _TranselatState();
}

class _TranselatState extends State<Transelat> {
  TextEditingController number = TextEditingController();

  String fullName = '';
  // ArabicNumbers arabicNumber = ArabicNumbers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Form(
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: number,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          color: Color(0xff6464F9),
                          icon: Icon(Icons.clear),
                          onPressed: () {
                            number.clear();
                          },
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xff6464F9),
                              width: 2,
                            )),
                        labelText: 'رصيدك',
                        labelStyle: Theme.of(context).textTheme.headline4),
                    onChanged: (text) {
                      setState(() {
                        fullName = text;
                      });
                    },
                  ),
                ],
              ),
            ),
            Text(
              'رصيدك كتابيا '
              ' باللغة العربية هو',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              // arabicNumber.convert(fullName),
              '${fullName} تعني : ${Tafqeet.convert('${fullName}')}دينار جزائري',
              //الف وثلاثمائة وسبعة وتسعون
              textDirection: TextDirection.rtl,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
