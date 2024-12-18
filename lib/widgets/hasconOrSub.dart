import 'package:flutter/material.dart';

class ContainerwithbelowCont extends StatelessWidget {
  final title;
  final String? subtitle;
  final String image;
  final hasContainer;
  const ContainerwithbelowCont(
      {super.key,
      required this.title,
      this.subtitle = "",
      this.hasContainer = true,
      this.image = 'assets/images/people.png'});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Stack(
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
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              hasContainer
                  ? Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(27)),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : Text(""),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width - 200,
                    child: Text(subtitle.toString())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
