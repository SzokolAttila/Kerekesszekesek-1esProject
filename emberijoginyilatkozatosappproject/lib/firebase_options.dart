
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCeXgHSFpy1N07UqVII8zc2fvZiiByEmW4',
    appId: '1:298381478638:web:7c7f29d5847ed50cb1c1ff',
    messagingSenderId: '298381478638',
    projectId: 'imc-main',
    authDomain: 'imc-main.firebaseapp.com',
    storageBucket: 'imc-main.appspot.com',
  );
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCeXgHSFpy1N07UqVII8zc2fvZiiByEmW4',
    appId: '1:298381478638:android:7c7f29d5847ed50cb1c1ff',
    messagingSenderId: '298381478638',
    projectId: 'imc-main',
    authDomain: 'imc-main.firebaseapp.com',
    storageBucket: 'imc-main.appspot.com',
  );



  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCeXgHSFpy1N07UqVII8zc2fvZiiByEmW4',
    appId: '1:298381478638:ios:7c7f29d5847ed50cb1c1ff',
    messagingSenderId: '298381478638',
    projectId: 'imc-main',
    authDomain: 'imc-main.firebaseapp.com',
    storageBucket: 'imc-main.appspot.com',
  );
}
