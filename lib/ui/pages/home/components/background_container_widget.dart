import 'package:flutter/material.dart';
import 'package:new_taskee/ui/helpers/enums/task_state_enum.dart';

class BackgroundContainerWidget extends StatelessWidget {
  final Widget child;
  final TaskState taskState;
  const BackgroundContainerWidget(
      {Key? key, required this.child, required this.taskState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Expanded(
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: taskState == TaskState.toDo
                          ? const BorderRadius.only(
                              topLeft: Radius.circular(60))
                          : taskState == TaskState.done
                              ? const BorderRadius.only(
                                  topRight: Radius.circular(60))
                              : BorderRadius.circular(0),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 35),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            taskState.description,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Divider(
                          color: Colors.black.withOpacity(0.3),
                          height: 2,
                          thickness: 1,
                        ),
                        child,
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
