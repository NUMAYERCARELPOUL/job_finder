import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  final String ? title;
  final Widget? icon;
  final String? sufflix;
  final Widget?prefix;
  const Header({super.key,this.title, this.icon, this.sufflix, this.prefix});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          prefix??Container(),

          Text(title??""),
          icon??Container(),
         Text(sufflix??""),

        ],
      ),
    );
  }
}
