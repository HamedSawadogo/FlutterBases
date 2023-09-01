import 'package:flutter/material.dart';
import 'package:testbases/models/Messages.dart';

class MessagesProvider extends ChangeNotifier {
  List<Message> usermessages = [
    Message("Bonjour 👋 comment tu vas ?", DateTime.now(), MessageStatus.sended,
        MessageType.text),
    Message("Je vais bien et toi ?", DateTime.now(), MessageStatus.received,
        MessageType.text),
    Message("Demain on travaille a quelle heure", DateTime.now(),
        MessageStatus.sended, MessageType.text),
    Message("je ne sais pas d'abord", DateTime.now(), MessageStatus.received,
        MessageType.text),
    Message("je vais voir d'abord le programme ", DateTime.now(),
        MessageStatus.received, MessageType.text),
    Message("Ok fais mon signe  💪", DateTime.now(), MessageStatus.sended,
        MessageType.text),
    Message("Bonjour 👋 comment tu vas ?", DateTime.now(), MessageStatus.sended,
        MessageType.text),
    Message("Je vais bien et toi ?", DateTime.now(), MessageStatus.received,
        MessageType.text),
    Message("Demain on travaille a quelle heure", DateTime.now(),
        MessageStatus.sended, MessageType.text),
    Message("Ok fais mon signe  💪", DateTime.now(), MessageStatus.sended,
        MessageType.text),
    Message("Bonjour 👋 comment tu vas ?", DateTime.now(), MessageStatus.sended,
        MessageType.text),
    Message("Je vais bien et toi ?", DateTime.now(), MessageStatus.received,
        MessageType.text),
    Message("Demain on travaille a quelle heure", DateTime.now(),
        MessageStatus.sended, MessageType.text),
  ];
  void addMessage(Message message) {
    usermessages.add(message);
    notifyListeners();
  }

  void deleteMessage(Message message) {
    usermessages.remove(message);
    notifyListeners();
  }

  int messagesSize() {
    return usermessages.length;
  }
}
