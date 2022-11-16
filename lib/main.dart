import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_test/pages/mainscreen.dart';

import 'bindings/bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(

      debugShowCheckedModeBanner: false,
      initialBinding: MyBindings(),
      home:Directionality(textDirection: TextDirection.rtl,child: MainScreen(),)
    );
  }
}

