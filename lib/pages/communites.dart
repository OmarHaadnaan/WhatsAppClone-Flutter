import 'package:flutter/material.dart';
import 'package:whatsapp/communityname.dart';
import 'package:whatsapp/widgets/hasconOrSub.dart';

class Communites extends StatelessWidget {
  const Communites({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ContainerwithbelowCont(
          title: "New Community",
        ),
        Column(
          children: List.generate(
              communities.length,
              (index) => ContainerwithbelowCont(
                    title: communities[index],
                    hasContainer: false,
                  )),
        )
      ],
    );
  }
}
