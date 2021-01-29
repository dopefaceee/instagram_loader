// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraphData _$GraphDataFromJson(Map<String, dynamic> json) {
  return GraphData(
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GraphDataToJson(GraphData instance) => <String, dynamic>{
      'user': instance.user,
    };
