import 'package:flutter/material.dart';
import 'package:valdez0422/pantallas0422/panel0422/widgets0422/Item_ropa0422.dart';

class PanelPantalla0422 extends StatelessWidget {
  const PanelPantalla0422({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff87c0ca),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/ValdezMich128/Img_IOS/main/iconh4.jpg"),
            ),
          )
        ],
        title: const Text('SadBoyz Valdez 0422',
            style: TextStyle(color: Colors.white)),
      ),
      body: Column(children: <Widget>[
        Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 5),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(.1),
                    spreadRadius: 5,
                    blurRadius: 5)
              ]),
          child: const TextField(
            decoration: InputDecoration(
              hintText: "Que quieres ver",
              hintStyle: TextStyle(fontWeight: FontWeight.w300),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, color: Colors.brown),
            ),
          ),
        ),
        Container(
          height: 180,
          margin: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://raw.githubusercontent.com/ValdezMich128/Img_IOS/main/fondoj.jpg"))),
        ),
        ListTile(
          title: Text("Mejores Canciones"),
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
          trailing: Icon(Icons.filter_list_off_outlined),
        ),
        Expanded(
            child: GridView.count(
          padding: EdgeInsets.all(15),
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
          children: [for (int i = 1; i <= 10; i++) const Itemropa()],
        )),
      ]),
    );
  }
}
