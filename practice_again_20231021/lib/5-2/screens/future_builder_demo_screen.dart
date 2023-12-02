import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureBuilderDemoScreen extends StatelessWidget {
  const FutureBuilderDemoScreen({Key? key}) : super(key: key);

  Future<dynamic> getDataFromRemote() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    var response = await http.get(url);

    return response.body;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getDataFromRemote(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<dynamic> asyncSnapshot) {
        return Scaffold(
            body: SingleChildScrollView(
          child: Column(children: [
            Text(asyncSnapshot.data.toString()),
          ]),
        ));
      },
    );
  }
}
