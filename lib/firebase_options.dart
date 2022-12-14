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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBIBLx4TuIqcxb42k6Qb-nAlmrW_STGAz0',
    appId: '1:514601998552:web:7c4b646f8df3cd65ca9fad',
    messagingSenderId: '514601998552',
    projectId: 'whatsapp-clone-b563d',
    authDomain: 'whatsapp-clone-b563d.firebaseapp.com',
    storageBucket: 'whatsapp-clone-b563d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArHlMSHqB7K-QmjJYh03FhmZQ7b4Wh7UE',
    appId: '1:514601998552:android:ac8bf93ffa8edd39ca9fad',
    messagingSenderId: '514601998552',
    projectId: 'whatsapp-clone-b563d',
    storageBucket: 'whatsapp-clone-b563d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBC4E9EYpdS834-eipoMYrMGAJIET52aEA',
    appId: '1:514601998552:ios:069e11af8c15d26dca9fad',
    messagingSenderId: '514601998552',
    projectId: 'whatsapp-clone-b563d',
    storageBucket: 'whatsapp-clone-b563d.appspot.com',
    iosClientId: '514601998552-64alkkvllo8gth95r7cuqkhsmei36t8n.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappUi',
  );
}
