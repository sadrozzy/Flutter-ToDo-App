import 'package:uuid/uuid.dart';

class Task {
  final String id;
  final String title;
  bool isDone;
  
  Task({required this.title, this.isDone = false}) : id = Uuid().v4();

  void toggleDone() {
    isDone = !isDone;
  }
}
