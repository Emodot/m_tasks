import 'package:flutter/material.dart';
import 'package:m_tasks/constant.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: TaskCheckbox(isChecked),
        // RoundCheckBox(
        //   onTap: null,
        //   size: 20,
        //   uncheckedColor: Colors.transparent,
        // ),
        title: const Text(
          "This is a Task",
          style: TextStyle(decoration: TextDecoration.lineThrough),
        ),
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;

  TaskCheckbox(this.checkboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: buttonColor,
      value: checkboxState,
      onChanged: (newValue) {
        // setState(() {
        //   checkboxState = newValue!;
        // });
      },
    );
  }
}
