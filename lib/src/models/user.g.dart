// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    biography: json['biography'] as String,
    externalUrl: json['external_url'] as String,
    fullName: json['full_name'] as String,
    isPrivate: json['is_private'] as bool,
    isVerified: json['is_verified'] as bool,
    profilePicUrlHd: json['profile_pic_url_hd'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'biography': instance.biography,
      'external_url': instance.externalUrl,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'is_verified': instance.isVerified,
      'profile_pic_url_hd': instance.profilePicUrlHd,
    };
