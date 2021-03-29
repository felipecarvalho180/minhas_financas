import 'package:flutter/material.dart';
import 'package:minhas_financas/src/components/body_text.dart';
import 'package:minhas_financas/src/components/bottom_navigation.dart';
import 'package:minhas_financas/src/components/button_label.dart';
import 'package:minhas_financas/src/components/heading_1.dart';
import 'package:minhas_financas/src/components/heading_2.dart';
import 'package:minhas_financas/src/components/heading_label.dart';
import 'package:minhas_financas/src/components/heading_small.dart';
import 'package:minhas_financas/src/constants/themes.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white, // cor da barra superior
    statusBarIconBrightness: Brightness.dark, // ícones da barra superior
    systemNavigationBarColor: Colors.white, // cor da barra inferior
    systemNavigationBarIconBrightness:
        Brightness.dark, // ícones da barra inferior
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              backgroundColor: Colors.white,
              brightness: Brightness.light,
            ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title!,
          style: TextStyle(color: Themes.primaryColor),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Heading1(
              text: 'Teste',
            ),
            Heading2(
              text: 'Test 2',
              textColor: Themes.secondaryColor,
            ),
            HeadingSmall(text: 'Teste 3'),
            HeadingLabel(text: 'Teste 4'),
            BodyText(text: 'Teste 5'),
            ButtonLabel(text: 'Teste 6'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
