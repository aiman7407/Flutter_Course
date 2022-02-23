class Message {
  late String text;
  late DateTime  time;
  late String sender;

  Message({ required this.text, required this.time, required this.sender});


  Map<String,dynamic> toMap()
  {
    return {
      'text':text,
      'time':time,
      'sender':sender,
    };
  }


}