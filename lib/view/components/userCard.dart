import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
UserCard({required this.userData});
final Map<String,dynamic> userData;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12.0),
      padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0,),
        border: Border.all(color: Colors.grey)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(label: "Name : ${userData['name']}"),
          Divider(height: 1,color: Colors.grey,),
          MyText(label: "E-Mail : ${userData['email']}"),
          Divider(height: 1,color: Colors.grey,),
          MyText(label: "Gender : ${userData['gender']}"),
        ],
      ),
    );
  }
}

class MyText extends StatelessWidget {
  MyText({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label,style: TextStyle(
      fontSize: 16.0,
      color: Colors.black
    ),);
  }
}