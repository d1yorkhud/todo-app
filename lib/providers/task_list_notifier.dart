import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/models/task.dart';

// State notifier for managing the list of tasks
class TaskListNotifier extends StateNotifier<List<Task>> {
  TaskListNotifier(List<Task> initialTasks) : super(initialTasks);

  // Method to add a task
  void addTask(Task task) {
    state = [...state, task];
  }

  // Method to remove a task
  void removeTask(String taskId) {
    state = state.where((task) => task.id != taskId).toList();
  }

  // Method to toggle task completion
  void toggleTaskCompletion(String taskId) {
    state = state.map((task) {
      if (task.id == taskId) {
        return Task(
          id: task.id,
          title: task.title,
          isDone: !task.isDone,
        );
      }
      return task;
    }).toList();
  }
}
