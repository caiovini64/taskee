import 'package:flutter/material.dart';

Animation<Offset> slideAnimation(Animation<double> animation) => Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut,
      ),
    );
