import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExFutureBuilder extends StatelessWidget {
  const ExFutureBuilder({Key? key}) : super(key: key);

  Future<dynamic> getbody() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    var response = await http.get(url);

    return response.body;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getbody(),
      initialData: "羅成員嫖妓不付錢",
      builder: (BuildContext context, AsyncSnapshot<dynamic> asyncSnapshot) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Text(asyncSnapshot.data.toString()),
          ),
        );
      },
    );
  }
}
