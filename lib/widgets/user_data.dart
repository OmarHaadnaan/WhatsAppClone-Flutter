import 'package:flutter/material.dart';
import 'package:whatsapp/model/data.dart';

class UserData extends StatelessWidget {
  final index;
  final bool isPassed;
  final Widget last;
  const UserData(
      {super.key,
      required this.index,
      this.isPassed = true,
      required this.last});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image(
                image: userData[index].userProfileImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                userData[index].name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                  height: 20,
                  width: MediaQuery.of(context).size.width - 200,
                  child: Text(userData[index].subtitle)),
            ],
          ),
          isPassed
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(userData[index].time),
                    Text(""),
                  ],
                )
              : last
        ],
      ),
    );
  }
}
