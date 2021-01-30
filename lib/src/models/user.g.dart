// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    biography: json['biography'] as String,
    edgeFollow: json['edge_follow'] == null
        ? null
        : EdgeFollow.fromJson(json['edge_follow'] as Map<String, dynamic>),
    edgeFollowedBy: json['edge_followed_by'] == null
        ? null
        : EdgeFollowedBy.fromJson(
            json['edge_followed_by'] as Map<String, dynamic>),
    externalUrl: json['external_url'] as String,
    username: json['username'] as String,
    fullName: json['full_name'] as String,
    isPrivate: json['is_private'] as bool,
    isVerified: json['is_verified'] as bool,
    profilePicUrlHd: json['profile_pic_url_hd'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'biography': instance.biography,
      'external_url': instance.externalUrl,
      'edge_followed_by': instance.edgeFollowedBy,
      'edge_follow': instance.edgeFollow,
      'full_name': instance.fullName,
      'username': instance.username,
      'is_private': instance.isPrivate,
      'is_verified': instance.isVerified,
      'profile_pic_url_hd': instance.profilePicUrlHd,
    };

EdgeFollowedBy _$EdgeFollowedByFromJson(Map<String, dynamic> json) {
  return EdgeFollowedBy(
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$EdgeFollowedByToJson(EdgeFollowedBy instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

EdgeFollow _$EdgeFollowFromJson(Map<String, dynamic> json) {
  return EdgeFollow(
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$EdgeFollowToJson(EdgeFollow instance) =>
    <String, dynamic>{
      'count': instance.count,
    };
