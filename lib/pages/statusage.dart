import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/hasconOrSub.dart';
import 'package:whatsapp/widgets/user_data.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ContainerwithbelowCont(
          title: "My Status",
          subtitle: "Tab to add Status update",
          image: 'assets/images/myprofile.jpg',
        ),
        Column(
          children: List.generate(
              5,
              (index) => UserData(
                    last: Text("                       "),
                    index: index,
                    isPassed: false,
                  )),
        )
      ],
    );
  }
}
