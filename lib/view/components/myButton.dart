import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({required this.label,required this.onTap});
  final String label;
  final VoidCallback onTap;
  
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(8.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(8.0),
          splashColor: Colors.teal[500],
        onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 18.0 , horizontal: 60.0),
            child: Text(label)  
          )
        ),
    );
  }
}