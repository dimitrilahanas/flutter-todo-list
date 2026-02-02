class Task {
  final int? id;
  final String name;
  final bool isChecked;

  const Task({
    required this.id,
    required this.name,
    required this.isChecked,
  });

  factory Task.fromJson(Map<String,dynamic> json) => Task(
    id: json['id'], 
    name: json['name'], 
    isChecked: json['isChecked'] == 1
  );

  Map<String,dynamic> toJson() => {
    'id': id,
    'name': name,
    'isChecked': isChecked ? 1 : 0,
  };
}