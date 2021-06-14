import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserDataController extends GetxController {
  
  var userData = [].obs;
  var length = 0.obs;

 @override
 void onInit() { 
  fetchUser();
  super.onInit();
 }

  fetchUser()async {
    try{
      http.Response response = await http.get(
        Uri.parse('https://gorest.co.in/public-api/users'),
        headers: {"Accept":"application/json", "Content-type": "application/json"},
      );
      print(response.statusCode);
      Map<dynamic, dynamic> decodedResponse = json.decode(response.body);
      if(response.statusCode == 200){
        userData.value = decodedResponse['data'];
        length = length + userData.length;
        print(userData);
      }
    }
    catch(e){
      print(e);
    }
  }
}