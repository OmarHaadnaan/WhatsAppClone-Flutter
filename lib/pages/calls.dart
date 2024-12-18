import 'package:flutter/material.dart';
import 'package:whatsapp/model/data.dart';
import 'package:whatsapp/widgets/user_data.dart';

class Calls extends StatelessWidget {
  const Calls({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userData.length,
      itemBuilder: (context, index) {
        return UserData(
          last: Icon(Icons.call),
          index: index,
          isPassed: false,
        );
      },
    );
  }
}
