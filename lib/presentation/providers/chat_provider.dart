import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

// ChangeNotifier => Notifica cuando hay cambios
class ChatProvider extends ChangeNotifier {

  List<Message> messages = [
    Message(text: 'Hola linda!!', fromWho: FromWho.ME),
    Message(text: 'Ya regresaste del trabajo?', fromWho: FromWho.ME),
  ];

  Future<void> sendMessage(String text) async {

    

  }

}
