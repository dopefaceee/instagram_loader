import 'package:instagram_loader/src/models/graph_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'root_response.g.dart';

@JsonSerializable()
class RootResponse {
  @JsonKey(name: 'logging_page_id')
  String loggingPageId;
  @JsonKey(name: 'show_suggested_profiles')
  bool showSuggestedProfiles;
  @JsonKey(name: 'show_follow_dialog')
  bool showFollowDialog;
  @JsonKey(name: 'graphql')
  GraphData graphData;
  @JsonKey(name: 'toast_content_on_load')
  bool toastContentOnLoad;
  @JsonKey(name: 'show_view_shop')
  bool showViewShop;
  @JsonKey(name: 'profile_pic_edit_sync_props')
  bool profilePicEditSyncProps;

  RootResponse({
    this.loggingPageId,
    this.showSuggestedProfiles,
    this.showFollowDialog,
    this.graphData,
    this.toastContentOnLoad,
    this.showViewShop,
    this.profilePicEditSyncProps,
  });

  factory RootResponse.fromJson(Map<String, dynamic> json) =>
      _$RootResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RootResponseToJson(this);
}
