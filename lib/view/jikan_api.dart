import 'dart:convert';
import 'package:http/http.dart' as http;

class jikanapi{
  Future<void> fetchData() async{
    final url = Uri.parse('https://github.com/consumet/api.consumet.org');
  // final headers = {
  //   'x-rapidapi-host': 'jikan1.p.rapidapi.com',
  //   'x-rapidapi-key': '10f7056c25mshe027a6a89ce8fcep104600jsn3c46c0c3d421',
  // };

 try {
   final response = await http.get(url);
    
   if(response.statusCode==200){
final data = json.decode(response.body);
print(data);

   }
   else {
      print('Error: ${response.statusCode}');
    }
 } catch (e) {
   print(" le bhai error ::${e}");
 }
  }


}