import 'package:uuid/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

var _uuid = Uuid();

@freezed
abstract class Category with _$Category {
  const factory Category({
    String id,
    @required String name,
    //@required int color,
  }) = _Category;

  factory Category.create(String name, int color) {
    return Category(
      id: _uuid.v4(),
      name: name,
      //color: color,
    );
  }

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}