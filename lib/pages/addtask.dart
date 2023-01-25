import 'package:flutter/material.dart';
import 'package:todo/pages/task.dart';

String title = '';
String desc = '';
showForm(int id, BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => BottomSheet(
      onClosing: () {},
      builder: (ctx) => SizedBox(
        height: 500,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(70.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Task title',
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 192, 79, 65),
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    title = value;
                  },
                ),
                const SizedBox(
                  height: 28,
                ),
                const Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 192, 79, 65),
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    desc = value;
                  },
                ),
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 192, 79, 65),
                    ),
                    onPressed: () {
                      tasks.add(Task(title, desc));
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Add task'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
