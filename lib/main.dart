import 'package:cash1/wigdet/drawer.dart';
import 'package:cash1/wigdet/light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'module/transelt.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'AE'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController number = TextEditingController();
  String fullName = '';
  _MyHomePageState();

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
      body: Transelat(),
    );
  }
}
