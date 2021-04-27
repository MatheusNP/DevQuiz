import 'dart:convert';

class AnswerModel {
  final String title;
  final bool isCorrected;

  AnswerModel({
    required this.title,
    this.isCorrected = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isCorrected': isCorrected,
    };
  }

  factory AnswerModel.fromMap(Map<String, dynamic> map) {
    return AnswerModel(
      title: map['title'],
      isCorrected: map['isCorrected'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswerModel.fromJson(String source) =>
      AnswerModel.fromMap(json.decode(source));
}
