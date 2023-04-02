import 'package:flutter/material.dart';
import 'package:m_tasks/constant.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const ListTile(
        leading: RoundCheckBox(
          onTap: null,
          size: 20,
          uncheckedColor: Colors.transparent,
        ),
        title: Text("This is a Task"),
      ),
    );
  }
}
