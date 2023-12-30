import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // 设置 FirebaseCrashlytics
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Crashlytics Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Crashlytics Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 模拟抛出一个异常
            try {
              throw Exception('This is a test exception!');
            } catch (e, stack) {
              // 手动记录错误或异常到 Firebase Crashlytics
              FirebaseCrashlytics.instance.recordError(e, stack);
            }
          },
          child: Text('Simulate Crash'),
        ),
      ),
    );
  }
}
