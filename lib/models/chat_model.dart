class ChatModel {
  String url;
  String nameContact;
  String message;
  String time;
  String date;
  bool isTyping;
  int countMessage;
  ChatModel({
    required this.url,
    required this.nameContact,
    required this.message,
    required this.time,
    required this.date,
    required this.isTyping,
    required this.countMessage,
  });

  void setMessage() {
    if (this.isTyping) {
      this.message = "escribiendo...";
    }
  }
}
