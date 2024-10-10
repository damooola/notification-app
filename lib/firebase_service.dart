import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:notification/main.dart';

class Firebaseservice {
  // initiaize firebase messaging
  final firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    // request permission
    await firebaseMessaging.requestPermission();

    // get fCM token for device
    final fcmToken = await firebaseMessaging.getToken();
    print("FCMToken: ${fcmToken.toString()}");

    // for bachgroud
    initPushNotification();
  }

  // handle receved messages
  void handleMessage(RemoteMessage? message) {
    // do nothing if message is null
    if (message == null) {
      return;
    }
    // go to notif page
    navigatorKey.currentState?.pushNamed("/notif", arguments: message);
  }

  // background and foreground settings
  Future initPushNotification() async {
    // if app was teerminated and now opened
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    // event listeners when a notifcation opens the app
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
