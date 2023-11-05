import 'package:flutter/material.dart';
import 'package:practice_again_20231021/3-9/components/common_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                child: Text(
                  "雲端練 Line@ QR Code",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              Container(
                child: Image(image: AssetImage("assets/qr_code/roger.png")),
              ),
              Container(
                child: Text("掃了會有好傑寶"),
              ),
              Container(
                child: TextButton(
                  child: Text("導向大話雲端"),
                  onPressed: () => Navigator.pushNamed(context, "/cloud-guide"),
                ),
              ),
              Container(
                child: TextButton(
                  child: Text("導向未來必備"),
                  onPressed: () =>
                      Navigator.pushNamed(context, "/future-class"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
