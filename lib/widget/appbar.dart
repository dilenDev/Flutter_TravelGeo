import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar? appBar;

  const BaseAppBar({Key? key, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0))),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.lightBlueAccent,
              Colors.lightBlue,
              Colors.blueAccent,
            ],
          ),
        ),
      ),
      title: Text(
        "Travel Geo",
        style: GoogleFonts.pacifico(
          textStyle: const TextStyle(color: Colors.white),
        ),
      ),
      // leading: IconButton(
      //   icon: const FaIcon(FontAwesomeIcons.alignLeft),
      //   onPressed: () {},
      // ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: (Image(image: AssetImage("assets/images/logo.png"))),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
