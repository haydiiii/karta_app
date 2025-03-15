import 'package:flutter/material.dart';

pushto(context, Widget newView) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => newView));
}

pushWithReplacement(context, Widget newView) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => newView));
}

pushAndRemoveUntil(context, Widget newView) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => newView), (route) => false);
}
