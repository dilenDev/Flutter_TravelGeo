import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:weather_app/widget/appbar.dart';
import 'package:weather_app/widget/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List titles = [
      'Colombo',
      'Gall',
      'Kandy',
      'Negombo',
      'Anuradapura',
      'Sri Jayawardanapura Kotte',
      'Katunayake',
      'Giant\'s Tank Sanctuary',
      'Trincomalee',
      'Batticaloa',
      'Matara'
    ];

    final List subTitle = [
      '6.964341059471133, 79.88227526560202',
      '6.091141510150245, 80.23383773458856',
      '7.280485654749383, 80.65131816651008',
      '7.193295194539809, 79.86030261129036',
      '8.303650924166801, 80.38764631477018',
      '6.889132197566522, 79.91900134567116',
      '7.1709516231503985, 79.88915628785668',
      '8.868655749263656, 80.06449797134681',
      '8.58578873104286, 81.21088460912013',
      '7.728659654543898, 81.68075716874662',
      '5.956148146540541, 80.55549931005712',
    ];

    final List icons = [
      CupertinoIcons.search_circle,
      CupertinoIcons.search_circle,
      CupertinoIcons.search_circle,
      CupertinoIcons.search_circle,
      CupertinoIcons.search_circle,
      CupertinoIcons.search_circle,
      CupertinoIcons.search_circle,
      CupertinoIcons.search_circle,
      CupertinoIcons.search_circle,
      CupertinoIcons.search_circle,
      CupertinoIcons.search_circle,
    ];

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.lightBlueAccent,
      drawer: const MenuDrawer(),
      appBar: const BaseAppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.freeiconspng.com%2Fuploads%2Fworld-map-png-5.png&f=1&nofb=1"),
            alignment: Alignment.bottomCenter,
          ),
          // gradient: LinearGradient(
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomLeft,
          //   stops: const [0.1, 0.5, 0.7, 0.9],
          //   colors: [
          //     Colors.lightBlueAccent,
          //     Colors.blue[100]!,
          //     Colors.blue[200]!,
          //     Colors.blue,
          //   ],
          //),
        ),
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: titles
              .length, //? wrap the scrollable physics according to items count
          shrinkWrap: true, //!
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(
                  left: 5.0, right: 5.0, top: 5.0),
              decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                tileColor: Colors.black,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                title: Text(
                  titles[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                  subTitle[index].toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                    fontSize: 16.0,
                  ),
                ),
                leading: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 20,
                    child: Icon(
                      icons[index],
                      color: Colors.white,
                      size: 30,
                    )),
                onTap: () async {
                  // ignore: todo
                  //TODO: change to push

                  // Navigator.pop(context);
                  // if (index == 0) {
                  //   // nextScreen(context, BookmarkPage());
                  // } else if (index == 1) {
                  //   // nextScreenPopup(context, VideoArticles());
                  // } else if (index == 2) {
                  //   // nextScreenPopup(context, QuectionView());
                  // } else if (index == 4) {
                  //   // await launch(

                  // }
                },
                
              ),
            );
            
          },
        ),
      ),
    );
  }
}
