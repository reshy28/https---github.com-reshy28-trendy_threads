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
        return windows;
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
    apiKey: 'AIzaSyBIaxBJtzAZf211aUQJ39KE313rx9zntDU',
    appId: '1:223039051759:web:f66538cdfc369097ce081a',
    messagingSenderId: '223039051759',
    projectId: 'trendythreads-46707',
    authDomain: 'trendythreads-46707.firebaseapp.com',
    storageBucket: 'trendythreads-46707.appspot.com',
    measurementId: 'G-YQ7B6BC7DL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBkrjXEU94be1lFgsqbPXLmhVA011uGGYU',
    appId: '1:223039051759:android:ca1d155b996d79e8ce081a',
    messagingSenderId: '223039051759',
    projectId: 'trendythreads-46707',
    storageBucket: 'trendythreads-46707.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0g_pY7MiwWD2-ORr3Rp7LZj9UuH6qSS8',
    appId: '1:223039051759:ios:af0a472adf94bd43ce081a',
    messagingSenderId: '223039051759',
    projectId: 'trendythreads-46707',
    storageBucket: 'trendythreads-46707.appspot.com',
    iosBundleId: 'com.example.trendyThreads',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC0g_pY7MiwWD2-ORr3Rp7LZj9UuH6qSS8',
    appId: '1:223039051759:ios:af0a472adf94bd43ce081a',
    messagingSenderId: '223039051759',
    projectId: 'trendythreads-46707',
    storageBucket: 'trendythreads-46707.appspot.com',
    iosBundleId: 'com.example.trendyThreads',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBIaxBJtzAZf211aUQJ39KE313rx9zntDU',
    appId: '1:223039051759:web:051a2301b3eb473bce081a',
    messagingSenderId: '223039051759',
    projectId: 'trendythreads-46707',
    authDomain: 'trendythreads-46707.firebaseapp.com',
    storageBucket: 'trendythreads-46707.appspot.com',
    measurementId: 'G-VC9BQZK0WS',
  );
}
