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
    apiKey: 'AIzaSyC08hsr3NdScchM163soLbE-kuvyeQRKL8',
    appId: '1:696919012745:web:4ddd9aa3d106e94dc55d58',
    messagingSenderId: '696919012745',
    projectId: 'pushnoftication-dff94',
    authDomain: 'pushnoftication-dff94.firebaseapp.com',
    storageBucket: 'pushnoftication-dff94.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBv2CvK9OazypFnalN8khtVCZvTdVctAgg',
    appId: '1:696919012745:android:661b555482ef0064c55d58',
    messagingSenderId: '696919012745',
    projectId: 'pushnoftication-dff94',
    storageBucket: 'pushnoftication-dff94.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBztm_DSkD--dNDurBR4CsdZfWzRAlFORA',
    appId: '1:696919012745:ios:0d96ef29654ec60fc55d58',
    messagingSenderId: '696919012745',
    projectId: 'pushnoftication-dff94',
    storageBucket: 'pushnoftication-dff94.firebasestorage.app',
    iosBundleId: 'com.example.pushNotification',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBztm_DSkD--dNDurBR4CsdZfWzRAlFORA',
    appId: '1:696919012745:ios:0d96ef29654ec60fc55d58',
    messagingSenderId: '696919012745',
    projectId: 'pushnoftication-dff94',
    storageBucket: 'pushnoftication-dff94.firebasestorage.app',
    iosBundleId: 'com.example.pushNotification',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC08hsr3NdScchM163soLbE-kuvyeQRKL8',
    appId: '1:696919012745:web:19a31ff60d4efe9fc55d58',
    messagingSenderId: '696919012745',
    projectId: 'pushnoftication-dff94',
    authDomain: 'pushnoftication-dff94.firebaseapp.com',
    storageBucket: 'pushnoftication-dff94.firebasestorage.app',
  );
}
