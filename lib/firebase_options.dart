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
    apiKey: 'AIzaSyB1T2ZKh-LrNbi5p_jkYjZIhBivtgpokRk',
    appId: '1:609967972913:web:86f975f6fa0ed546826b10',
    messagingSenderId: '609967972913',
    projectId: 'ktea-d27b0',
    authDomain: 'ktea-d27b0.firebaseapp.com',
    storageBucket: 'ktea-d27b0.appspot.com',
    measurementId: 'G-VBQVWWQRZM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAVFMSrxttYdiz4DvaQhZ681Y69Ayzj2zI',
    appId: '1:609967972913:android:eac29da50f7e612e826b10',
    messagingSenderId: '609967972913',
    projectId: 'ktea-d27b0',
    storageBucket: 'ktea-d27b0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGp6Y2-tXkwfi7FDuGGvuKQNOC8esuMcU',
    appId: '1:609967972913:ios:591e99355149df52826b10',
    messagingSenderId: '609967972913',
    projectId: 'ktea-d27b0',
    storageBucket: 'ktea-d27b0.appspot.com',
    iosBundleId: 'com.example.furnitureApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDGp6Y2-tXkwfi7FDuGGvuKQNOC8esuMcU',
    appId: '1:609967972913:ios:db95949ee8fc88b6826b10',
    messagingSenderId: '609967972913',
    projectId: 'ktea-d27b0',
    storageBucket: 'ktea-d27b0.appspot.com',
    iosBundleId: 'com.example.furnitureApp.RunnerTests',
  );
}
