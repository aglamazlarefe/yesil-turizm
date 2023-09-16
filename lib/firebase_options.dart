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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB9TK3kXdORtx3pLjBJ3DdIo2kFqnS3d28',
    appId: '1:748810917400:web:e711d6697dc61fb6dc956d',
    messagingSenderId: '748810917400',
    projectId: 'yesil-turizm',
    authDomain: 'yesil-turizm.firebaseapp.com',
    storageBucket: 'yesil-turizm.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAX-lw6Mg7FOwH2ke729NRPj_fxol4JjWg',
    appId: '1:748810917400:android:b985cc6ad309fcd0dc956d',
    messagingSenderId: '748810917400',
    projectId: 'yesil-turizm',
    storageBucket: 'yesil-turizm.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBC4izcPecafaVHznZdDJApcL21zSJU908',
    appId: '1:748810917400:ios:495ed664f8e5bfbadc956d',
    messagingSenderId: '748810917400',
    projectId: 'yesil-turizm',
    storageBucket: 'yesil-turizm.appspot.com',
    iosBundleId: 'com.example.yesilTurizm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBC4izcPecafaVHznZdDJApcL21zSJU908',
    appId: '1:748810917400:ios:482cf3ea426a5e14dc956d',
    messagingSenderId: '748810917400',
    projectId: 'yesil-turizm',
    storageBucket: 'yesil-turizm.appspot.com',
    iosBundleId: 'com.example.yesilTurizm.RunnerTests',
  );
}
