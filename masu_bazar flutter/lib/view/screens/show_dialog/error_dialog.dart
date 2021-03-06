import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flushbar(
      title: "Registertion failed",
      duration: Duration(seconds: 10),
    );
  }
}
