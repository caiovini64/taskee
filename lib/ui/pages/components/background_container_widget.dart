import 'package:flutter/material.dart';

class BackgroundContainerWidget extends StatelessWidget {
  final Widget child;
  const BackgroundContainerWidget({Key? key, required this.child})
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
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(60)),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 35),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Todo',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Divider(
                          color: Colors.black.withOpacity(0.3),
                          height: 2,
                          thickness: 1,
                        ),
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
