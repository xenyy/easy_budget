// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Expense _$_$_ExpenseFromJson(Map<String, dynamic> json) {
  return _$_Expense(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    import: (json['import'] as num)?.toDouble(),
    categories: (json['categories'] as List)
        ?.map((e) =>
            e == null ? null : Category.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ExpenseToJson(_$_Expense instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'import': instance.import,
      'categories': instance.categories,
    };
