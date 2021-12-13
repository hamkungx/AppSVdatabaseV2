import 'package:appsv/screen/model/home_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String page = "Home";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<homei> homeie = [
      homei(name: "group 1", list: [
        homeim(
            name: "คัวละคร",
            image:
                "https://steamuserimages-a.akamaihd.net/ugc/1702912022000499063/35ED52F0066803853EEC118B959D22ADD1CDA809/",
            detail: "detail")
      ]),
      homei(name: "group 2", list: [
        homeim(
            name: "คัวละคร",
            image:
                "https://steamuserimages-a.akamaihd.net/ugc/1702912022000499063/35ED52F0066803853EEC118B959D22ADD1CDA809/",
            detail: "detail")
      ]),
    ];

    return Scaffold(
        appBar: AppBar(
          leading: Container(),
          leadingWidth: 0,
          title: Text("SVdatabase"),
        ),
        body: Column(children: [
          Text("List", style: TextStyle(fontSize: 24)),
          ...homeie.map((group) => Column(
                children: [
                  Text(group.name),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: group.list.length,
                      itemBuilder: (context, index) {
                        final item = group.list[index];
                        return Container(
                          width: 220,
                          child: Image.network(item.image),
                        );
                      },
                    ),
                  )
                ],
              ))
        ]));
  }
}
