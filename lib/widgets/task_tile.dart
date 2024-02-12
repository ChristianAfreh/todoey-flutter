import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
  });

  final bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

//  (bool? checkboxState) {
//           setState(() {
//             isChecked = checkboxState!;
//           });
//         },

// class TaskCheckBox extends StatelessWidget {
//   const TaskCheckBox(
//       {super.key,
//       required this.checkboxState,
//       required this.toggleCheckboxState});

//   final bool checkboxState;
//   final Function(bool?)? toggleCheckboxState;

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
