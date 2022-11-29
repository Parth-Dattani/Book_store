// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class DefaultBackButton extends StatelessWidget {
  const DefaultBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.redAccent,
      ),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
