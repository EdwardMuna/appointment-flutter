
import 'package:auntie_rafiki_appointment/pages/boom_color_changer-page.dart';
import 'package:flutter/material.dart';

import 'pages/my_home_page.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.purple,
      ),
      home: BoomColorChanger(),
    );
  }
}
