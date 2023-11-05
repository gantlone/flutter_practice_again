import 'package:flutter/material.dart';
import 'package:practice_again_20231021/3-9/components/common_drawer.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CommonDrawer.getDrawer(context),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                child: Image(image: AssetImage("assets/qr_code/roger2.jpg")),
              ),
              Container(
                child: Text("柔成員"),
              ),
              Container(
                child: TextButton(
                  child: Text("導向大話雲端"),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
