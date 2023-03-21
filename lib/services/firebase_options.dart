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
    apiKey: 'AIzaSyCJZmA8-4BuKlB3bneo3QQL19rVZEi7ntU',
    appId: '1:979225451483:web:2d320b7f5fc3578969a5fe',
    messagingSenderId: '979225451483',
    projectId: 'test-project-51633',
    authDomain: 'test-project-51633.firebaseapp.com',
    storageBucket: 'test-project-51633.appspot.com',
    measurementId: 'G-9BRT56YNMX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJqQ9kNNzCNpHgwZ9cjce56eOZHbiGwPM',
    appId: '1:979225451483:android:9a17da58663e2a1169a5fe',
    messagingSenderId: '979225451483',
    projectId: 'test-project-51633',
    storageBucket: 'test-project-51633.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGopFfBMQP7RWeOCHkOJZoHbeC3PCrfsk',
    appId: '1:979225451483:ios:5aad164d2e3e01ac69a5fe',
    messagingSenderId: '979225451483',
    projectId: 'test-project-51633',
    storageBucket: 'test-project-51633.appspot.com',
    iosClientId: '979225451483-u3dakr4aqnf7tgb3b4nd8c9imgjlmh2q.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDGopFfBMQP7RWeOCHkOJZoHbeC3PCrfsk',
    appId: '1:979225451483:ios:5aad164d2e3e01ac69a5fe',
    messagingSenderId: '979225451483',
    projectId: 'test-project-51633',
    storageBucket: 'test-project-51633.appspot.com',
    iosClientId: '979225451483-u3dakr4aqnf7tgb3b4nd8c9imgjlmh2q.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseTest',
  );
}