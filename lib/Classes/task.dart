class Task {
  late String title;
  bool _done = false;

  Task({required this.title});

  void setDone(bool value) {
    _done = value;
  }

  bool getDone() {
    return _done;
  }
}
