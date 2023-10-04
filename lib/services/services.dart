import 'package:chatgpt/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../widgets/text_widget.dart';

class Services {
  static Future<void> showModelsheet({required BuildContext context}) async {
    await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        backgroundColor: scaffoldBackgroundColor,
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Flexible(
                    child: TextWidget(
                  label: "Choose model :",
                  fontSize: 16,
                )),
                Flexible(flex: 2,child: DropDownWidget())
              ],
            ),
          );
        });
  }
}
