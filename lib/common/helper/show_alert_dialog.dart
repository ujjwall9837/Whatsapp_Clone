import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';

showAlertDialog({
  required BuildContext context,
  required String message,
  String? btnText,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(
          message,
          style: TextStyle(
            color: context.theme.greyColor,
          ),
        ),
        contentPadding: const EdgeInsets.all(0),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              btnText ?? ' OK',
              style: TextStyle(color: context.theme.circleImageColor),
            ),
          ),
        ],
      );
    },
  );
}