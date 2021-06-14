import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/Controller/formController.dart';
import 'package:test/view/components/myButton.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override

  String gender = 'Male';
  final _formKey = GlobalKey<FormState>();
   final nameController = TextEditingController();
   final mailController = TextEditingController();
   final formController = Get.find<FormController>();

  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus)
          currentFocus.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Registration'),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 24.0),
          child: Center(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildTextField(label: 'Name',controller: nameController,validator: (val){
                    if(val == '')return 'Enter Name';
                    else{
                      if(val.toString().length > 100)  return 'Character max limit 100';
                      else return null;
                    }
                  }),
                  SizedBox(height: 24.0),
                  buildTextField(label: 'E-mail',controller: mailController,validator: (val){
                    if (val.isEmpty) {return 'Enter a valid email address';}
                    else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.(com|in)+").hasMatch(val)){return 'Enter a valid email address';}return null; 
                  }
                  ),
                  SizedBox(height: 24.0),
                  Row(
                    children: [
                      myRadio(label: 'Male'),
                      myRadio(label: 'Female')
                    ],
                  ),
                  SizedBox(height: 24.0),
                  MyButton(label: 'Submit',onTap: (){
                    if (_formKey.currentState!.validate()) {
                       formController.onFormSubmit(name: nameController.value.text, mail: mailController.value.text, gender: gender);
                    }
                  },)
                ],
              ),
            ),
          )
        ),
      ),
    );
  }

  Row myRadio({required String label}){
    return Row(
      children: [
        Text(label),  
        Radio(value: label, groupValue:gender, onChanged: (val){
          print(val);
          setState(() {
            gender = label;
          });
        }), 
      ],
    );
  }

  TextFormField buildTextField({label,controller,validator}) {
    return 
    TextFormField(
      cursorColor: Colors.blueAccent,
      controller: controller,
      style: buildTextStyle(color: Colors.grey,size: 14.0,weight: FontWeight.w500),
      validator: validator,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),),
        focusColor: Colors.blue,
        hoverColor: Colors.blue,
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.only(left: 16.0,bottom: 17.0,top: 18.0),
        hintStyle: buildTextStyle(size: 14.0,weight: FontWeight.w500,color: Colors.white),
        labelText: label,
      ),
    );
  }



  TextStyle buildTextStyle({color,weight,size}) =>TextStyle( fontSize: size,color: color,fontWeight: weight,fontFamily: 'Poppins');

}


