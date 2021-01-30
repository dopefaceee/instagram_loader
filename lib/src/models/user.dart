import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String biography;
  @JsonKey(name: 'external_url')
  String externalUrl;
  @JsonKey(name: 'edge_followed_by')
  EdgeFollowedBy edgeFollowedBy;
  @JsonKey(name: 'edge_follow')
  EdgeFollow edgeFollow;
  @JsonKey(name: 'full_name')
  String fullName;
  String username;
  @JsonKey(name: 'is_private')
  bool isPrivate;
  @JsonKey(name: 'is_verified')
  bool isVerified;
  @JsonKey(name: 'profile_pic_url_hd')
  String profilePicUrlHd;
  // @JsonKey(name: 'edge_owner_to_timeline_media')
  // bool edgeOwnerToTimelineMedia;
  User({
    this.biography,
    this.edgeFollow,
    this.edgeFollowedBy,
    this.externalUrl,
    this.username,
    this.fullName,
    this.isPrivate,
    this.isVerified,
    this.profilePicUrlHd,
    //this.edgeOwnerToTimelineMedia,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class EdgeFollowedBy {
  int count;

  EdgeFollowedBy({this.count});

  factory EdgeFollowedBy.fromJson(Map<String, dynamic> json) =>
      _$EdgeFollowedByFromJson(json);
  Map<String, dynamic> toJson() => _$EdgeFollowedByToJson(this);
}

@JsonSerializable()
class EdgeFollow {
  int count;

  EdgeFollow({this.count});

  factory EdgeFollow.fromJson(Map<String, dynamic> json) =>
      _$EdgeFollowFromJson(json);
  Map<String, dynamic> toJson() => _$EdgeFollowToJson(this);
}
