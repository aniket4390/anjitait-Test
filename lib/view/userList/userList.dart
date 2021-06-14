import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/Controller/userDataController.dart';
import 'package:test/view/components/userCard.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 12.0),
        child: GetX<UserDataController>(
          builder: (controller) {
            return ListView.builder(          
               shrinkWrap: true, scrollDirection: Axis.vertical,
               itemCount: controller.userData.isEmpty ? 0 : controller.userData.length,
               itemBuilder: (context, index) {return UserCard(userData: controller.userData[index]);}
            );
          }
        ),
      )
    );
  }
}