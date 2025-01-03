// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:push_notification/main.dart';

// class FirebaseApi {
//   // create an  instance of the Firebase messaging
//   final _firebaseMessaging = FirebaseMessaging.instance;

//   // function to initialize notifications
//   Future<void> initNotifications() async {
//     // request permission to show notifications
//     await _firebaseMessaging.requestPermission();

//     // fetch the FCM token for the divice
//     final fCMToken = await _firebaseMessaging.getToken();

//     // print the token(normally you would send this to year server)
//     print("Token: ${fCMToken}");

//     initPushNotifications();
//   }

//   // function to handle received messages
//   void handleMessage(RemoteMessage? message) {
//     // if the message is null, do nothing
//     if (message == null) {
//       return;
//     }

//     // navigate to new screen when message is recived and user taps notification
//     navigatorKey.currentState!
//         .pushNamed("/notification_page", arguments: message);
//   }

//   // function to initialize foreground and background notifications
//   Future initPushNotifications() async {
//     // handle notification if the app was terminated and now opened
//     FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

//     // attach event listeners for when a notification open the app
//     FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
//   }
// }

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:push_notification/main.dart';

class FirebaseApi {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    // Request permission to show notifications
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
      return; // Exit if permission is not granted
    }

    // Fetch the FCM token for the device
    final fCMToken = await _firebaseMessaging.getToken();
    print("Token: $fCMToken");

    // Initialize push notifications
    await initPushNotifications();
  }

  void handleMessage(RemoteMessage? message) {
    if (message == null) {
      return;
    }

    print('Handling message: ${message.messageId}');
    navigatorKey.currentState!
        .pushNamed("/notification_page", arguments: message);
  }

  Future<void> initPushNotifications() async {
    // Handle notification if the app was terminated and now opened
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    // Attach event listeners for when a notification opens the app
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);

    // Handle foreground messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Received a message while in the foreground!');
      handleMessage(message);
    });
  }
}
