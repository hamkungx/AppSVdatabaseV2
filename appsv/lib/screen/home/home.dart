import 'package:appsv/screen/home/detail.dart';
import 'package:appsv/screen/home/more.dart';
import 'package:appsv/screen/model/home_model.dart';
import 'package:appsv/screen/profile/auth_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String page = "Home";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthController authController = AuthController();

  void _toMorePage(homei homeie) {
    Navigator.pushNamed(context, MorePage.page, arguments: homeie);
  }

  void _toItemDetailPage(homeim Homeim) {
    Navigator.pushNamed(context, ItemDetailPage.page, arguments: Homeim);
  }

  @override
  Widget build(BuildContext context) {
    final List<homei> homeie = [
      homei(name: "ตัวละคร", list: [
        homeim(
            name: "Alex",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/0/04/Alex.png",
            detail: "detail"),
        homeim(
            name: "Elliott",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/b/bd/Elliott.png",
            detail: "detail"),
        homeim(
            name: "Harvey",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/9/95/Harvey.png",
            detail: "detail"),
        homeim(
            name: "Abigail",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/8/88/Abigail.png",
            detail: "วันเกิด:	Fall 13 อาศัยอยู่ใน:	Pelican Town"),
        homeim(
            name: "Sam",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/a/a8/Sebastian.png",
            detail: "detail"),
        homeim(
            name: "Sebastian",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/b/bd/Elliott.png",
            detail: "detail"),
        homeim(
            name: "Haley",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/1/1b/Haley.png",
            detail: "detail"),
        homeim(
            name: "Leah",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/e/e6/Leah.png",
            detail: "วันเกิด:	Fall 13 อาศัยอยู่ใน:	Pelican Town"),
        homeim(
            name: "Maru",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/f/f8/Maru.png",
            detail: "detail"),
        homeim(
            name: "Penny",
            image:
                "https://stardewvalleywikithai.com/wp-content/uploads/2016/03/Penny.png",
            detail: "detail"),
        homeim(
            name: "Caroline",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/8/87/Caroline.png",
            detail: "detail"),
        homeim(
            name: "Clint",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/3/31/Clint.png",
            detail: "วันเกิด:	Fall 13 อาศัยอยู่ใน:	Pelican Town"),
      ]),
      homei(name: "เทศกาล", list: [
        homeim(
            name: "Egg Festival",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/2/20/Egg_Festival.png/500px-Egg_Festival.png",
            detail: "Dwarf"),
        homeim(
            name: "Flower Festival",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/a/ad/Flower_Festival.jpg/500px-Flower_Festival.jpg",
            detail: "Dwarf"),
        homeim(
            name: "Luau",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/a/af/Luau.png/500px-Luau.png",
            detail: "Dwarf"),
        homeim(
            name: "Dance Of The Moonlight Jellies",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/3/35/Dance_Of_The_Moonlight_Jellies.jpg/400px-Dance_Of_The_Moonlight_Jellies.jpg",
            detail: "Dwarf"),
        homeim(
            name: "Stardew Valley Fair",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/4/45/StardewValleyFair.png/500px-StardewValleyFair.png",
            detail: "Dwarf"),
        homeim(
            name: "Spirit’s Eve",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/a/a9/Spirits_Eve.png/500px-Spirits_Eve.png",
            detail: "Dwarf"),
        homeim(
            name: "Festival Of Ice",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/thumb/f/fc/Festival_of_Ice_1.jpg/400px-Festival_of_Ice_1.jpg",
            detail: "Dwarf"),
      ]),
      homei(name: "ข้อมูลปลา", list: [
        homeim(
            name: "Albacore",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/e/e1/Albacore.png",
            detail: "Dwarf"),
        homeim(
            name: "Anchovy",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/7/79/Anchovy.png",
            detail: "Dwarf"),
        homeim(
            name: "Bream",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/8/82/Bream.png",
            detail: "Dwarf"),
        homeim(
            name: "Bullhead",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/d/db/Bullhead.png",
            detail: "Dwarf"),
        homeim(
            name: "Carp",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/a/a8/Carp.png",
            detail: "Dwarf"),
        homeim(
            name: "Catfish",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/9/99/Catfish.png",
            detail: "Dwarf"),
        homeim(
            name: "Chub",
            image:
                "https://stardewvalleywiki.com/mediawiki/images/b/bd/Chub.png",
            detail: "Dwarf"),
      ]),
    ];

    return Scaffold(
        appBar: AppBar(
          leading: Container(),
          leadingWidth: 0,
          title: Text("SVdatabase"),
          actions: [
            IconButton(
                onPressed: () {
                  authController.sinOut();
                },
                icon: Icon(Icons.logout))
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text("Stardew Valley Database",
                      style: TextStyle(fontSize: 24)))),
          ...homeie.map((group) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(group.name),
                      ),
                      TextButton(
                          onPressed: () {
                            _toMorePage(group);
                          },
                          child: Text("ดูทั้งหมด"))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: group.list.length,
                        itemBuilder: (context, index) {
                          final item = group.list[index];
                          return InkWell(
                            onTap: () {
                              _toItemDetailPage(item);
                            },
                            child: Container(
                              width: 120,
                              margin: EdgeInsets.only(right: 5),
                              child:
                                  Image.network(item.image, fit: BoxFit.cover),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ))
        ]));
  }
}
