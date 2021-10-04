import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/pages/home.dart';
import 'package:weather_app/pages/map_screen.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    final List titles = ['Home', 'Map', 'bookmarks', 'bookmarks'];
    final List icons = [
      CupertinoIcons.home,
      CupertinoIcons.globe,
      CupertinoIcons.book_circle,
      CupertinoIcons.book_circle,
    ];

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blueAccent,
                    Colors.white10,
                    Colors.white12,
                  ],
                ),
              ),
              padding: const EdgeInsets.all(15),
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    'Travel Geo',
                    style: GoogleFonts.pacifico(
                      textStyle: const TextStyle(
                          fontSize: 30.0, color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: titles.length,
              padding: EdgeInsets.only(bottom: 50),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  horizontalTitleGap: 10,
                  minVerticalPadding: 20,
                  tileColor: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  title: Text(
                    titles[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: 20.0,
                    ),
                  ),
                  leading: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 20,
                      child: Icon(
                        icons[index],
                        color: Colors.white,
                      )),
                  onTap: () async {
                    Navigator.pop(context);
                    if (index == 0) {
                      // MaterialPageRoute(builder: (context) {
                      //   return const HomeScreen();
                      //});
                      nextScreen(context, const HomeScreen());
                    } else if (index == 1) {
                      // MaterialPageRoute(builder: (context) {
                      //   return const MapScreen();
                      // });
                      nextScreen(context, const MapScreen());
                    } else if (index == 2) {
                    } else if (index == 4) {
                      //
                      //
                    }
                  },
                );
              },
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: 100,
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.freeiconspng.com%2Fuploads%2Fworld-map-png-5.png&f=1&nofb=1"),
                alignment: Alignment.bottomCenter,
              )),
            )
          ],
        ),
      ),
    );
  }

  void nextScreen(context, page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
