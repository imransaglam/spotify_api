import 'categories.dart';

class Categories {
  Categories? categories;

  Categories({
    this.categories,
  });

  Categories copyWith({
    Categories? categories,
  }) {
    return Categories(
      categories: categories ?? this.categories,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'categories': categories,
    };
  }

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      categories: json['categories'] == null
          ? null
          : Categories.fromJson(json['categories'] as Map<String, dynamic>),
    );
  }
}
