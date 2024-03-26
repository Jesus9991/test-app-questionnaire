import 'package:flutter/material.dart';

class SnackBarWidget {
  static void showSnackBar(
      BuildContext context, String message, IconData icon) {
    final size = MediaQuery.of(context).size;
    final snackBar = SnackBar(
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // backgroundColor: MainTheme.white,
      content: Row(children: [
        Container(
          height: size.height * .05,
          width: size.width * .01,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        ),
        SizedBox(width: size.width * .02),
        Icon(
          icon,
          size: 30,
        ),
        SizedBox(width: size.width * .015),
        SizedBox(
            width: size.width * .7,
            child: Text(
              message,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ))
      ]),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 4),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
