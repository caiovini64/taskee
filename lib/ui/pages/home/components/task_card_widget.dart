import 'package:flutter/material.dart';
import 'package:new_taskee/ui/components/app_theme.dart';
import 'package:new_taskee/ui/helpers/enums/task_state_enum.dart';
import 'package:new_taskee/ui/pages/home/home_viewmodel.dart';

class TaskCard extends StatelessWidget {
  final HomeViewModel task;

  const TaskCard({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Card(
        elevation: 10,
        color: greenCardColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 10, right: 5, bottom: 30, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible: task.state != TaskState.toDo.description,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.title,
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 10),
                    Text(
                      task.content,
                      style: Theme.of(context).textTheme.bodyText2,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: task.state != TaskState.done.description,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                replacement: IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
