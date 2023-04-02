import 'package:flutter/material.dart';
import 'package:m_tasks/constant.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        // backgroundBlendMode: ,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: const ListTile(
        // shape: RoundedRectangleBorder(
        //   // side:BorderSide(width: 0)
        //   BoxShadow()
        // ),
        leading: Checkbox(value: false, onChanged: null,),
        title: Text("This is a Task"),
      ),
    );
  }
}