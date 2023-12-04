
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final IconData leadingIcon;
  final String titleText;
  final Color iconAndTitleColor;
  const ListTileWidget({
    Key? key,
    required this.leadingIcon,
    required this.titleText,
    required this.iconAndTitleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: iconAndTitleColor,
        ),
        title: Text(
          titleText,
          style: TextStyle(
            color: iconAndTitleColor,
          ),
        ),
      ),
    );
  }
}
