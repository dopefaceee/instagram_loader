// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RootResponse _$RootResponseFromJson(Map<String, dynamic> json) {
  return RootResponse(
    loggingPageId: json['logging_page_id'] as String,
    showSuggestedProfiles: json['show_suggested_profiles'] as bool,
    showFollowDialog: json['show_follow_dialog'] as bool,
    graphData: json['graphql'] == null
        ? null
        : GraphData.fromJson(json['graphql'] as Map<String, dynamic>),
    toastContentOnLoad: json['toast_content_on_load'] as bool,
    showViewShop: json['show_view_shop'] as bool,
    profilePicEditSyncProps: json['profile_pic_edit_sync_props'] as bool,
  );
}

Map<String, dynamic> _$RootResponseToJson(RootResponse instance) =>
    <String, dynamic>{
      'logging_page_id': instance.loggingPageId,
      'show_suggested_profiles': instance.showSuggestedProfiles,
      'show_follow_dialog': instance.showFollowDialog,
      'graphql': instance.graphData,
      'toast_content_on_load': instance.toastContentOnLoad,
      'show_view_shop': instance.showViewShop,
      'profile_pic_edit_sync_props': instance.profilePicEditSyncProps,
    };
