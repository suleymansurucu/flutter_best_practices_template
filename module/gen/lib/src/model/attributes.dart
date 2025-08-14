import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attributes.g.dart';

@JsonSerializable()


/// Represents the attributes of a resource, such as a book or article.
class Attributes with EquatableMixin {
  final String? title;
  final String? body;
  final DateTime? created;
  final DateTime? updated;

  /// It will be used to create a new instance of [Attributes].
  Attributes({
    this.title,
    this.body,
    this.created,
    this.updated,
  });

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  @override
  List<Object?> get props => [title, body, created, updated];


  /// Creates a copy of the current [Attributes] instance with the option to
  ///
  Attributes copyWith({
    String? title,
    String? body,
    DateTime? created,
    DateTime? updated,
  }) {
    return Attributes(
      title: title ?? this.title,
      body: body ?? this.body,
      created: created ?? this.created,
      updated: updated ?? this.updated,
    );
  }
}