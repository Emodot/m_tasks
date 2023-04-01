import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      style: ListTileStyle.list,
      leading: Checkbox(value: false, onChanged: null,),
      title: Text("This is a Task"),
    );
  }
}