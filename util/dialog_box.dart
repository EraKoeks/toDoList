import 'package:flutter/material.dart';
import 'package:todolist/util/my_button.dart';


class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

   DialogBox({super.key, required this.controller, required this.onCancel, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.greenAccent[200],
      content: SizedBox(
        height: 120,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          // get user input
           TextField(
            controller: controller,
            decoration: const InputDecoration(border: OutlineInputBorder(),
            hintText: "Add a new task",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // save button
              MyButton(text: 'Save', onPressed: onSave),

              const SizedBox(width: 8),

              // cancel button
              MyButton(text: 'Cancel', onPressed: onCancel),
            ],
          )

          // buttons -> save + cancel

        ],
        ),
      ),
    );
  }
}
