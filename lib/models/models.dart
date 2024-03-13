class taskmodel {
  final String id;
  final String title;
  final String describtion;
  final DateTime dateTime;
  final bool isdone;

  taskmodel({
    required this.id,
    required this.title,
    required this.describtion,
    required this.dateTime,
    required this.isdone,
  });

  taskmodel.fromjson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            title: json['title'],
            describtion: json['describtion'],
            dateTime: json['datetime'],
            isdone: json['isdone']);

  Map<String, dynamic> toJson() => {
        'id': id,
        "title": title,
        "describtion": describtion,
        "dateTime": dateTime,
        "isdone": isdone,
      };
}
