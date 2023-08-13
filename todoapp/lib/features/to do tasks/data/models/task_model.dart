class Task {
  String? title;
  String? description;
  String? dueDate;

  Task({this.title, this.description, this.dueDate});

  Task.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    dueDate = json['dueDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['dueDate'] = this.dueDate;
    return data;
  }
}
