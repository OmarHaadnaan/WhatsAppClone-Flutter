import 'package:flutter/material.dart';
import 'package:whatsapp/model/data.dart';
import 'package:whatsapp/widgets/user_data.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<String> chipLabels = ['All', 'Unread', 'Favorites', 'Groups', '+'];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: chipLabels.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(5.0),
              child: Chip(
                side: BorderSide(
                  color: Colors.grey.shade200,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                backgroundColor: Colors.grey.shade200,
                label: Text(
                  chipLabels[index],
                ),
              ),
            ),
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.archive_outlined,
            size: 22,
          ),
          title: Text(
            "Archive",
            style: TextStyle(fontSize: 22),
          ),
          trailing: Text(
            "8",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Column(
          children: List.generate(
            userData.length,
            (index) => UserData(
              last: Text(""),
              index: index,
            ),
          ),
        )
      ],
    );
  }
}
