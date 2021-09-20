import 'package:flutter/material.dart';

abstract class NewTaskPresenter {
  TextEditingController get titleController;
  TextEditingController get contentController;
  GlobalKey<FormState> get formKey;

  Future<void> addTask();
}
