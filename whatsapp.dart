import 'package:flutter/material.dart';
const tealGreenDark = Color(0xff075E54);
const tealGreen = Color(0xff128C7E);
const lightGreen = Color(0xff25D366);
var userMap =[
  {
    "name":"Bharath",
    "dp":"https://avatars.githubusercontent.com/u/42716432?v=4",
    "lastMessage":"Have fun coding :)",
    "lastMessageTime":"2023-01-16 13:27:00",
    "newMessagesCount":"4"
  },{
    "name":"Ava",
    "dp":"https://randomuser.me/api/portraits/women/44.jpg",
    "lastMessage":"Hello world!",
    "lastMessageTime":"2023-01-16 13:25:00",
    "newMessagesCount":"1"
  },{
    "name":"Arman",
    "dp":"https://randomuser.me/api/portraits/men/47.jpg",
    "lastMessage":"Hey dude, you there?",
    "lastMessageTime":"2023-01-16 13:20:00",
    "newMessagesCount":"3"
  },{
    "name":"Alireza",
    "dp":"https://randomuser.me/api/portraits/women/26.jpg",
    "lastMessage":"I'm not sure. What about you?",
    "lastMessageTime":"2023-01-15 13:27:00",
    "newMessagesCount":"0"
  },{
    "name":"Amir Mahdi",
    "dp":"https://randomuser.me/api/portraits/men/7.jpg",
    "lastMessage":"Let's see who that was...",
    "lastMessageTime":"2023-01-12 13:27:00",
    "newMessagesCount":"0"
  },{
    "name":"Sorena",
    "dp":"https://randomuser.me/api/portraits/women/80.jpg",
    "lastMessage":"No, I'm planning to go out",
    "lastMessageTime":"2023-01-14 13:27:00",
    "newMessagesCount":"1"
  },{
    "name":"Aria",
    "dp":"https://randomuser.me/api/portraits/women/29.jpg",
    "lastMessage":"I'm fine, thanks!",
    "lastMessageTime":"2023-01-15 13:27:00",
    "newMessagesCount":"0"
  },{
    "name":"Shervin",
    "dp":"https://randomuser.me/api/portraits/men/88.jpg",
    "lastMessage":"Will meet you soon.",
    "lastMessageTime":"2023-01-01 13:27:00",
    "newMessagesCount":"0"
  },{
    "name":"Mahesh",
    "dp":"https://randomuser.me/api/portraits/men/58.jpg",
    "lastMessage":"Happy new year!",
    "lastMessageTime":"2023-01-01 13:27:00",
    "newMessagesCount":"0"
  },{
    "name":"Bala",
    "dp":"https://randomuser.me/api/portraits/men/83.jpg",
    "lastMessage":"Ok",
    "lastMessageTime":"2022-11-16 13:20:00",
    "newMessagesCount":"1"
  },{
    "name":"Med",
    "dp":"https://randomuser.me/api/portraits/women/59.jpg",
    "lastMessage":"Sure",
    "lastMessageTime":"2022-01-16 13:27:00",
    "newMessagesCount":"1"
  },{
    "name":"Dan",
    "dp":"https://randomuser.me/api/portraits/men/57.jpg",
    "lastMessage":"Oh wow!",
    "lastMessageTime":"2022-12-16 1:27:00",
    "newMessagesCount":"1"
  }
];

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: tealGreen, title: Text("Whatsapp"),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Icon(Icons.camera_alt_outlined),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Icon(Icons.more_vert),
            ),
          ],),
        body:ListView(
          children:[
            for(int i=0;i< userMap.length;i++)
              ChatHead (
                userMap[i]['dp']!,
                userMap[i]['name']!,
                userMap[i]['lastMessage']!,
                userMap[i]['lastMessageTime']!,

              )
          ],
        ),
      ),
    );
  }
}

class ChatHead extends StatelessWidget {
  const ChatHead( this.url,
      this.name,
      this.lastMessage,
      this.date,{
        Key? key ,
      }) : super(key: key);

  final String url;
  final String name;
  final String lastMessage;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:16),
        child: CircleAvatar(key:ValueKey(url),backgroundColor: Colors.purple,
          maxRadius:30,
          backgroundImage: NetworkImage(url),),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name),
          Text(lastMessage),
        ],
      ),
      Spacer(),
      Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Text(date),
      )
    ],
    );
  }
}
