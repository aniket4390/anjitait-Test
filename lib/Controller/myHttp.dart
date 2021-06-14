import 'package:http/http.dart' as http;
import 'package:test/view/keys.dart';
class HttpService {
  //  get() async {
  //     http.Response response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  //     if (response.statusCode == 200)  return response.body;
  //     else throw Exception('Failed to load data');
  // }

    post(body) async {
//     {
// "name":"Aniket Ambre",
// "gender":"Male", 
// "email":"aniketambre10@gmail.com", 
// "status":"Active"
// }
      http.Response response = await http.post(
        Uri.parse('https://gorest.co.in/public-api/users'),
        headers: {"Accept":"application/json", "Content-type": "application/json", "Authorization": apiKey},
        body: body,
      );
      return response.body;
  }
}