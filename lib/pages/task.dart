class Task {
  var title;
  var desc;

  Task(String title, String desc) {
    this.title = title;
    this.desc = desc;
  }
}

List<Task> tasks = [
  Task('Shop for groceries', ''),
  Task('Pack bag', 'Pack crayons and a soft drink'),
  Task('Create project tag !! project', 'Create a project tag'),
];
