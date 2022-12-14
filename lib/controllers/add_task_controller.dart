import 'package:get/get.dart';

import '../db/db_helper.dart';
import '../models/task_model.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  bool isDarkMode = false;
  updateIsDarkMode() {
    isDarkMode = !isDarkMode;
    update();
  }

// inserting the object to the database
  var taskList = <UserTask>[].obs;
  Future<int> addTask({UserTask? task}) async {
    return await DBHelper.insert(task);
  }

// reading the object from the database
  void getTask() async {
    print("read function is called");
    List<Map<String, dynamic?>>? tasks = await DBHelper.query();
    taskList.assignAll(tasks!.map((e) => UserTask.fromJson(e)).toList());
  }

// deleting the task using the specific id
  Future<void> delete({required UserTask task}) async {
    var id = await DBHelper.delete(task: task);
    print(id);
    getTask();
  }

// updating the task in the database by id
  Future<void> updateTask(int id) async {
    var value = await DBHelper.update(id);
    print(value);
    getTask();
  }
}
