import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/view/components/myButton.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Test")),
      ),
      body: Center(
        child: Container(
          height: 400.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyButton(label: 'page 1',onTap: ()=>{Get.toNamed('/registerUser')}),
              MyButton(label: 'page 2',onTap: ()=>{Get.toNamed('/userList')}),
              MyButton(label: 'page 3',onTap: ()=>{Get.toNamed('/uiDesignPage')})
            ],
          ),
        ),
      ),
    );
  }
}