import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotifPage extends StatelessWidget {
  const NotifPage({super.key});

  @override
  Widget build(BuildContext context) {
    //get message and display on screen
    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Notif"),
          centerTitle: true,
        ),
        body: Center(
          child: ListTile(
            isThreeLine: true,
            title: Text(message.notification!.title.toString()),
            subtitle: Text(message.notification!.body.toString()),
          ),
        ));
  }
}
