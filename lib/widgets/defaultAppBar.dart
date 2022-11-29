// ignore_for_file: prefer_const_constructors, annotate_overrides, file_names

import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget child;

  const DefaultAppBar({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(56.0);
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Colors.redAccent),
      ),
      centerTitle: true,
      backgroundColor: Colors.red[50],
      elevation: 0.0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.redAccent),
      leading: child,
    );
  }
}
