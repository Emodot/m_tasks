import 'package:flutter/material.dart';
import 'package:m_tasks/constant.dart';

class AddTask extends StatelessWidget {
  const AddTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 50),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              children: const [
                Spacer(),
                Icon(
                  Icons.close,
                ),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: " Enter new task",
                  hintStyle: TextStyle(
                      fontSize: 20, color: iconsColor.withOpacity(0.6)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: iconsColor.withOpacity(0.6),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: InputBorder.none),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              children: [
                const Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                    // borderRadius: BorderRadius.all(radius),
                    backgroundColor: MaterialStateProperty.all(
                      buttonColor,
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Text(
                        "Add Task",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.add,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
