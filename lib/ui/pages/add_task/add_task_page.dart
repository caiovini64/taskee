import 'package:flutter/material.dart';
import 'package:new_taskee/ui/pages/add_task/components/task_field_widget.dart';

class AddTaskPage extends StatelessWidget {
  AddTaskPage({Key? key}) : super(key: key);
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20,
          top: 10,
          bottom: 20,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Create new Task',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
              SizedBox(height: 40),
              TaskFieldWidget(
                labelText: 'Title',
                controller: titleController,
                semanticsLabel: 'Title field',
                validator: (String) {},
              ),
              SizedBox(height: 40),
              TaskFieldWidget(
                labelText: 'Content',
                controller: contentController,
                semanticsLabel: 'Content field',
                validator: (String) {},
                height: 150,
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
