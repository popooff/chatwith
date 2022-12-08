
class Message {

  final int sender;
  final DateTime time;
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });


  String sendAt() {
    return '${time.hour}:${time.minute}';
  }

}
