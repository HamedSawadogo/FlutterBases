enum MessageStatus { received, sended }

class Message {
  MessageStatus status;
  String message;
  DateTime date;

  Message(this.message, this.date, this.status);

  static List<Message> messages() {
    return [
      Message(
          "Bonjour 👋 comment tu vas ?", DateTime.now(), MessageStatus.sended),
      Message("Je vais bien et toi ?", DateTime.now(), MessageStatus.received),
      Message("Demain on travaille a quelle heure", DateTime.now(),
          MessageStatus.sended),
      Message("je ne sais pas d'abord", DateTime.now(), MessageStatus.received),
      Message("je vais voir d'abord le programme ", DateTime.now(),
          MessageStatus.received),
      Message("Ok fais mon signe  💪", DateTime.now(), MessageStatus.sended),
      Message(
          "Bonjour 👋 comment tu vas ?", DateTime.now(), MessageStatus.sended),
      Message("Je vais bien et toi ?", DateTime.now(), MessageStatus.received),
      Message("Demain on travaille a quelle heure", DateTime.now(),
          MessageStatus.sended),
      Message("Ok fais mon signe  💪", DateTime.now(), MessageStatus.sended),
      Message(
          "Bonjour 👋 comment tu vas ?", DateTime.now(), MessageStatus.sended),
      Message("Je vais bien et toi ?", DateTime.now(), MessageStatus.received),
      Message("Demain on travaille a quelle heure", DateTime.now(),
          MessageStatus.sended),
    ];
  }
}
