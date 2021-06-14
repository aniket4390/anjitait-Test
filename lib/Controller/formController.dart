import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test/view/keys.dart';
import 'dart:convert';

class FormController extends GetxController {
  Map<dynamic,dynamic> resBody = {};

  onFormSubmit({required String name,required String mail,required String gender}) async{
    Map<String,String> body = {
      "name":name,
      "gender":gender, 
      "email":mail, 
      "status":"Active"
    }; 
    try{
      http.Response response = await http.post(
        Uri.parse('https://gorest.co.in/public-api/users'),
        headers: {"Accept":"application/json", "Content-type": "application/json", "Authorization": "Bearer $apiKey"},
        body: jsonEncode(body),
      );
      resBody.addAll(jsonDecode(response.body));
      print(response.statusCode);
      if(response.statusCode == 200){     
        print(resBody['code']);
        if(resBody['code'].toString() == '200' || resBody['code'].toString() == '201'){
          Get.back();
          Get.snackbar(
          'Successfully Registered !',
          'ID = ${resBody['data']['id']}',
          duration: Duration(seconds: 4),
          animationDuration: Duration(milliseconds: 800),
          snackPosition: SnackPosition.TOP,
        );
        }
        if(resBody['code'].toString() == '422'){
          Get.snackbar(
            "Status - Registration Failed",
            "Error - User already Exist",
            duration: Duration(seconds: 4),
            animationDuration: Duration(milliseconds: 800),
            snackPosition: SnackPosition.TOP,
          );
        }
        // Get.back();
        // Get.snackbar(
        //   'Successfully Registered !',
        //   'ID = ${resBody['data']['id']}',
        //   duration: Duration(seconds: 4),
        //   animationDuration: Duration(milliseconds: 800),
        //   snackPosition: SnackPosition.TOP,
        // );
      }
    }
    catch(e){
      print(e);
    }
  }
}