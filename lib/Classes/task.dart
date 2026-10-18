import 'package:get/get.dart';

class Task extends GetxController {
  static List<Task> tasks = [].cast<Task>().obs;
  String title ;
  bool _done = false;
  int id ;

  Task({required this.id , required this.title});

 int getId(){
   return id;
 }

  bool getDone() {
    return _done;
  }

  String getTitle(){
    return title;
  }


  void setTitle(String titleTask){
    title = titleTask;
  }
  void setDone(bool value) {
    _done = value;
  }


  static List taskIsDoneOrNot (){
    int isDone = 0;
    for(int i = 0 ; i < Task.tasks.length ; i++){
      if(tasks[i].getDone() == true ) isDone++;
    }
    return [isDone , Task.tasks.length - isDone ] ;
  }


  static void addTask(Task task){
    tasks.add(task);
  }

  static void deleteTask(int id){
   for(int i = 0 ; i < tasks.length ; i++ ){
     if(tasks[i].getId() == id){
       tasks.removeAt(i);
     }
   }
  }
}

