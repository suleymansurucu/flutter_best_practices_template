import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

import 'attributes.dart';
part 'book.g.dart';

@JsonSerializable()
final class Book with EquatableMixin {
  final String? type;
  final String? id;
  final Attributes? attributes;

  Book({
    this.type,
    this.id,
    this.attributes,
  });

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  Map<String, dynamic> toJson() => _$BookToJson(this);

  @override
  List<Object?> get props => [type, id, attributes];

  Book copyWith({
    String? type,
    String? id,
    Attributes? attributes,
  }) {
    return Book(
      type: type ?? this.type,
      id: id ?? this.id,
      attributes: attributes ?? this.attributes,
    );
  }
}


