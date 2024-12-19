import '../../base_project.dart';
import 'package:flutter/material.dart';

class DialogHelper {
  /// Displays a confirmation dialog.
  ///
  /// The [context] parameter is required to show the dialog.
  /// The [type] parameter specifies the type of the dialog.
  /// The [title] parameter is an optional title for the dialog.
  /// The [msg] parameter is an optional message for the dialog.
  /// The [primaryColor] parameter is an optional color for the dialog's primary elements.
  /// The [callbackConfirm] parameter is a required function that will be called when the user confirms the dialog.
  /// ```
  static void showConfirmDialogHelper(
      {required BuildContext context,
      required DialogType type,
      String? title,
      String? msg,
      Color? primaryColor,
      required Function callbackConfirm}) async {
    showConfirmDialogCustom(
      context,
      primaryColor: primaryColor ?? Theme.of(context).primaryColor,
      title: msg ?? 'Vui lòng xác nhận thao tác',
      dialogType: type,
      onAccept: (context) {
        callbackConfirm();
      },
    );
  }
}
