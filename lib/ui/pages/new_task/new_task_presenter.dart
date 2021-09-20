import 'package:flutter/material.dart';

abstract class NewTaskPresenter {
  TextEditingController get titleController;
  TextEditingController get contentController;

  Future<void> addTask();
}
