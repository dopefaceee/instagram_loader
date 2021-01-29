import 'package:instagram_loader/src/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'graph_data.g.dart';

@JsonSerializable()
class GraphData {
  @JsonKey(name: 'user')
  User user;

  GraphData({this.user});

  factory GraphData.fromJson(Map<String, dynamic> json) =>
      _$GraphDataFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDataToJson(this);
}
