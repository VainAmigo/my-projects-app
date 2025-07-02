import 'package:flutter/material.dart';
import 'package:drible_app/apps/minimalistic_task_app/minimalistic_task.dart';

class MintHomeView extends StatefulWidget {
  const MintHomeView({super.key});

  @override
  State<MintHomeView> createState() => _MintHomeViewState();
}

class _MintHomeViewState extends State<MintHomeView> {
  String _openedDay = "MONDAY";

  final Map<String, List<Task>> weekTasks = {
    "MONDAY": [
      Task("5km run", completed: true),
      Task("Read 10 pages"),
      Task("Walk the dog"),
      Task("Get groceries"),
    ],
    "TUESDAY": [],
    "WEDNESDAY": [
      Task("5km run", completed: true),
      Task("Walk the dog"),
      Task("Get groceries"),
      Task("Read 10 pages"),
      Task("Walk the dog"),
      Task("Get groceries"),
    ],
    "THURSDAY": [],
    "FRIDAY": [],
  };

  void _toggleDay(String day) {
    setState(() {
      _openedDay = _openedDay == day ? '' : day;
    });
  }

  static const double closedHeight = 80.0;

  @override
  Widget build(BuildContext context) {
    final totalHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final daysCount = weekTasks.length;

    final openHeight = totalHeight - closedHeight * (daysCount - 1);

    return Scaffold(
      backgroundColor: AppColors.primaryLight,
      body: SafeArea(
        child: Column(
          children:
              weekTasks.keys.map((day) {
                final bool isOpen = _openedDay == day;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  height: isOpen ? openHeight : closedHeight,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.lightGrey, width: 1.0))),
                  child: GestureDetector(
                    onTap: () => _toggleDay(day),
                    child:
                        isOpen
                            ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(day, style: AppTypography.title50w800),
                                Text("April, 14 2025 — 9:41am", style: AppTypography.text14w400),
                                const SizedBox(height: 8),
                                Expanded(
                                  child:
                                      weekTasks[day]!.isEmpty
                                          ? SizedBox(
                                            width: double.infinity,
                                            child: Text("No tasks yet", style: AppTypography.text16w400),
                                          )
                                          : ListView(
                                            padding: EdgeInsets.zero,
                                            children: weekTasks[day]!.map((task) => TaskItem(task: task)).toList(),
                                          ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                                  child: Text("Add a new task...", style: AppTypography.text14w400),
                                ),
                              ],
                            )
                            : Align(
                              alignment: Alignment.centerLeft,
                              child: Text(day, style: AppTypography.title50w800),
                            ),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}

class Task {
  final String title;
  final bool completed;

  const Task(this.title, {this.completed = false});
}

class TaskItem extends StatelessWidget {
  final Task task;

  const TaskItem({super.key, required this.task});







  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
      child: CheckboxListTile(
        dense: true,
        contentPadding: EdgeInsets.zero,
        visualDensity: const VisualDensity(vertical: -2),
        title: Text(
          task.title,
          style: TextStyle(
            decoration: task.completed ? TextDecoration.lineThrough : TextDecoration.none,
            color: AppColors.primaryDark,
            fontSize: 16,
          ),
        ),
        value: task.completed,
        onChanged: (_) {},
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.deepOrange,
      ),
    );
  }
}
