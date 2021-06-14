import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/controllerBinding.dart';
import 'package:test/view/UserList/userList.dart';
import 'package:test/view/homePage/homePage.dart';
import 'package:test/view/registrationPage/register.dart';
import 'package:test/view/uiDesignpage/uiDesignPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinding(),
     // home: HomePage(),
     initialRoute: '/',
      getPages: [
        GetPage(name: '/', page:()=>HomePage()),
        GetPage(name: '/registerUser', page:()=>Register(),binding: ControllerBinding()),
        GetPage(name: '/userList', page:()=>UserList(),binding: ControllerBinding()),
        GetPage(name: '/uiDesignPage', page:()=>UiDesignPage()),   
      ],
    );
  }
}

