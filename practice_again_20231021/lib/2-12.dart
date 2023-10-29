import 'package:http/http.dart' as http;
import 'dart:convert';

// void main() async {
//   List<dynamic> jsonArrayResponse =
//       await getRemoteSystemData("https://jsonplaceholder.typicode.com/users");
//   print(jsonArrayResponse[0]);
//   print(jsonArrayResponse[0]['username']);
//   print(jsonArrayResponse[0]['email']);
//   print(jsonArrayResponse[0]['roger9527']);

//   List<dynamic> jsonArrayResponse2 =
//       await getRemoteSystemData("https://jsonplaceholder.typicode.com/users");
//   print(jsonArrayResponse[0]);
//   print(jsonArrayResponse[0]['username']);
//   print(jsonArrayResponse[0]['email']);
//   print(jsonArrayResponse[0]['roger9527']);
// }

// //封裝遠端呼叫方法，方便串接多個網址
// Future<List<dynamic>> getRemoteSystemData(String remoteUri) async {
//   Uri url = Uri.parse(remoteUri);
//   http.Response multipleResponses = await http.get(url);
//   List<dynamic> jsonArrayFromRemote = jsonDecode(multipleResponses.body);

//   return jsonArrayFromRemote;
// }

//題目
//1
void main() async {
  List<dynamic> aa =
      await getRemoteSystemData("https://jsonplaceholder.typicode.com/posts");
  print(aa[4]['id']);
}

Future<List<dynamic>> getRemoteSystemData(String remoteUri) async {
  Uri url = Uri.parse(remoteUri);
  http.Response multipleResponses = await http.get(url);
  List<dynamic> jsonArrayFromRemote = jsonDecode(multipleResponses.body);

  return jsonArrayFromRemote;
}
