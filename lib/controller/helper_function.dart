import 'dart:core';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class THelperFunction {
  static Color? getColor(String v) {
    if (v == 'Green') {
      return Colors.green;
    } else if (v == 'Green') {
      return Colors.green;
    } else if (v == 'Red') {
      return Colors.red;
    } else if (v == 'Blue') {
      return Colors.blue;
    } else if (v == 'Pink') {
      return Colors.pink;
    } else if (v == 'Grey') {
      return Colors.grey;
    } else if (v == 'Purple') {
      return Colors.purple;
    } else if (v == 'Black') {
      return Colors.black;
    } else if (v == 'White') {
      return Colors.white;
    } else if (v == 'Yellow') {
      return Colors.yellow;
    } else if (v == 'Orange') {
      return Colors.orange;
    } else if (v == 'Brown') {
      return Colors.brown;
    } else if (v == 'Teal') {
      return Colors.teal;
    } else if (v == 'Indigo') {
      return Colors.indigo;
    } else {
      return null;
    }
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => screen,
      ),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static List<T> removeDuplicates<T>(List<T> list,
      {String format = "dd MMM yyyy"}) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widget, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widget.length; i += rowSize) {
      final rowChildren = widget.sublist(
          i, i + rowSize > widget.length ? widget.length : i + rowSize);
      wrappedList.add(
        Row(
          children: rowChildren,
        ),
      );
    }
    return wrappedList;
  }
}