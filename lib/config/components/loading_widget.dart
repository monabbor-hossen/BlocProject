import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatefulWidget {
  final double size;
  const LoadingWidget({Key? key, this.size = 60}):super(key:key);

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size,
      width: widget.size,
      child: !kIsWeb && Platform.isAndroid ? const CircularProgressIndicator(
        color: Colors.green,
      ) : const CircularProgressIndicator(
        color: Colors.red,
      ),
    );
  }
}
