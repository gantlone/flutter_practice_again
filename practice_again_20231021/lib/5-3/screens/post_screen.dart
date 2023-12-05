import 'dart:math';

import 'package:flutter/material.dart';
import 'package:practice_again_20231021/5-3/components/expost_text.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ExpostText());
  }
}
