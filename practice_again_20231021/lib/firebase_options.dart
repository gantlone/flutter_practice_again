// File generated by FlutterFire CLI.

// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

import 'package:flutter/foundation.dart'

    show defaultTargetPlatform, kIsWeb, TargetPlatform;


/// Default [FirebaseOptions] for use with your Firebase apps.

///

/// Example:

/// ```dart

/// import 'firebase_options.dart';

/// // ...

/// await Firebase.initializeApp(

///   options: DefaultFirebaseOptions.currentPlatform,

/// );

/// ```

class DefaultFirebaseOptions {

  static FirebaseOptions get currentPlatform {

    if (kIsWeb) {

      return web;

    }

    switch (defaultTargetPlatform) {

      case TargetPlatform.android:

        return android;

      case TargetPlatform.iOS:

        return ios;

      case TargetPlatform.macOS:

        return macos;

      case TargetPlatform.windows:

        // throw UnsupportedError(

        //   'DefaultFirebaseOptions have not been configured for windows - '

        //   'you can reconfigure this by running the FlutterFire CLI again.',

        // );

        return android;

      case TargetPlatform.linux:

        throw UnsupportedError(

          'DefaultFirebaseOptions have not been configured for linux - '

          'you can reconfigure this by running the FlutterFire CLI again.',

        );

      default:

        throw UnsupportedError(

          'DefaultFirebaseOptions are not supported for this platform.',

        );

    }

  }


  static const FirebaseOptions web = FirebaseOptions(

    apiKey: 'AIzaSyCe7VY_vMSSwrQr3G-XIUuKzIP7JUuSU1U',

    appId: '1:987326550123:web:a1c40d9357c20fab01612e',

    messagingSenderId: '987326550123',

    projectId: 'project-5054359080012907568',

    authDomain: 'project-5054359080012907568.firebaseapp.com',

    databaseURL:

        'https://project-5054359080012907568-default-rtdb.firebaseio.com',

    storageBucket: 'project-5054359080012907568.appspot.com',

    measurementId: 'G-DJY37RDTK2',

  );


  static const FirebaseOptions android = FirebaseOptions(

    apiKey: 'AIzaSyAGwyNK9aT7MeuLRRFeYX3kF_FXAzJTweA',

    appId: '1:987326550123:android:28ea9c8e3a05144701612e',

    messagingSenderId: '987326550123',

    projectId: 'project-5054359080012907568',

    databaseURL:

        'https://project-5054359080012907568-default-rtdb.firebaseio.com',

    storageBucket: 'project-5054359080012907568.appspot.com',

  );


  static const FirebaseOptions ios = FirebaseOptions(

    apiKey: 'AIzaSyAI74V1oTretc2TZ5gRPoC1ghSLgrM1t-w',

    appId: '1:987326550123:ios:9e6e84f4fef2177f01612e',

    messagingSenderId: '987326550123',

    projectId: 'project-5054359080012907568',

    databaseURL:

        'https://project-5054359080012907568-default-rtdb.firebaseio.com',

    storageBucket: 'project-5054359080012907568.appspot.com',

    androidClientId:

        '987326550123-4qiiqvho07pbc5hni3cunc6u36kg0r5v.apps.googleusercontent.com',

    iosBundleId: 'com.example.practiceAgain20231021',

  );


  static const FirebaseOptions macos = FirebaseOptions(

    apiKey: 'AIzaSyAI74V1oTretc2TZ5gRPoC1ghSLgrM1t-w',

    appId: '1:987326550123:ios:9e6e84f4fef2177f01612e',

    messagingSenderId: '987326550123',

    projectId: 'project-5054359080012907568',

    databaseURL:

        'https://project-5054359080012907568-default-rtdb.firebaseio.com',

    storageBucket: 'project-5054359080012907568.appspot.com',

    androidClientId:

        '987326550123-4qiiqvho07pbc5hni3cunc6u36kg0r5v.apps.googleusercontent.com',

    iosBundleId: 'com.example.practiceAgain20231021',

  );

}

