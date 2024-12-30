import 'package:flutter/foundation.dart';

@immutable
final class Issue {
  const Issue({
    required this.number,
    required this.title,
    required this.author,
    required this.createdAt,
  });

  final int number;
  final String title;
  final String author;
  final DateTime createdAt;
}
