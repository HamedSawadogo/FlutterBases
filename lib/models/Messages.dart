enum MessageStatus { received, sended }

enum MessageType { video, image, text, vocal }

class Message {
  MessageStatus status;
  String message;
  DateTime date;
  MessageType messageType;

  Message(this.message, this.date, this.status, this.messageType);

  static List<Message> messages() {
    return [
      Message("Bonjour 👋 comment tu vas ?", DateTime.now(),
          MessageStatus.sended, MessageType.text),
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
      Message("Bonjour 👋 comment tu vas ?", DateTime.now(),
          MessageStatus.sended, MessageType.text),
      Message("Je vais bien et toi ?", DateTime.now(), MessageStatus.received,
          MessageType.text),
      Message("Demain on travaille a quelle heure", DateTime.now(),
          MessageStatus.sended, MessageType.text),
      Message("Ok fais mon signe  💪", DateTime.now(), MessageStatus.sended,
          MessageType.text),
      Message("Bonjour 👋 comment tu vas ?", DateTime.now(),
          MessageStatus.sended, MessageType.text),
      Message("Je vais bien et toi ?", DateTime.now(), MessageStatus.received,
          MessageType.text),
      Message("Demain on travaille a quelle heure", DateTime.now(),
          MessageStatus.sended, MessageType.text),
    ];
  }
}
