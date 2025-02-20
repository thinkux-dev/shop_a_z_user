// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGxtnpgO5ZTI6u39-eQNbA0tkqrX-hgGU',
    appId: '1:1079740891353:ios:a1cc6c481dd69ce0a07ec8',
    messagingSenderId: '1079740891353',
    projectId: 'shopatoz-9c00d',
    storageBucket: 'shopatoz-9c00d.appspot.com',
    iosBundleId: 'com.example.shopAZUser',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCf7EI76I1XbmEtBmj90jAY_8u2YvpUgmo',
    appId: '1:1079740891353:android:abea225b0c5cb609a07ec8',
    messagingSenderId: '1079740891353',
    projectId: 'shopatoz-9c00d',
    storageBucket: 'shopatoz-9c00d.appspot.com',
  );

}