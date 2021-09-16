import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:new_taskee/main/factories/pages/task/task_page_factory.dart';
import 'package:new_taskee/ui/components/app_theme.dart';

void main() {
  runApp(DevicePreview(builder: (_) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: makeTaskPage(),
    );
  }
}
