import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

extension ContextExtensions on BuildContext {
  double responsiveHeight(double h) {
    return MediaQuery.sizeOf(this).height * (h / 780);
  }

  double responsiveWidth(double w) {
    return MediaQuery.sizeOf(this).width * (w / 360);
  }

  double maxHeight() {
    return MediaQuery.sizeOf(this).height;
  }

  double maxWidth() {
    return MediaQuery.sizeOf(this).width;
  }

  showSnackbar(String msg) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: Colors.blue,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void progressbar() {
    showDialog(
        context: this,
        builder: (_) => const SpinKitThreeBounce(
              color: Color(0xffFA6A02),
            ));
  }
}
