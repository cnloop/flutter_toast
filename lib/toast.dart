import 'package:flutter/material.dart';

class Toast {
  static BuildContext ctx;

  static init(BuildContext context) {
    ctx = context;
  }

  static void show({@required String message}) {
    //创建一个OverlayEntry对象
    OverlayEntry overlayEntry = new OverlayEntry(
      builder: (context) {
        return Material(
          color: Colors.transparent,
          child: Center(
            child: Text(message),
          ),
        );
      },
    );
    //往Overlay中插入插入OverlayEntry
    Overlay.of(ctx).insert(overlayEntry);
    //两秒后，移除Toast
    new Future.delayed(Duration(seconds: 2)).then((value) {
      overlayEntry.remove();
    });
  }
}
