import 'package:flutter/material.dart';


class IconAddTask extends StatefulWidget {
  const IconAddTask({
    super.key,
   
  });

  

  @override
  State<IconAddTask> createState() => _IconAddTaskState();
}

class _IconAddTaskState extends State<IconAddTask> {
  Widget mainContent = Container();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffdce3e1),
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.add, color: Color(0xff939997), size: 35),
      ),
    );
  }
}
