import 'package:flutter/material.dart';

class Itemropa extends StatelessWidget {
  const Itemropa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://raw.githubusercontent.com/ValdezMich128/Img_IOS/main/am7.jpeg"),
        ),
        SizedBox(
          height: 10,
        ),
        Text("Cancion"),
        SizedBox(
          height: 5,
        ),
        Row(
            children: List.generate(
                5,
                (index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    )))
      ]),
    );
  }
}
