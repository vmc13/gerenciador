import 'package:flutter/material.dart';
import 'package:projeto_pages/pages/mypage.dart';
import 'package:projeto_pages/pages/docs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyPage(),
        '/docs': (context) => Docs()
      },
    );
  }
}
