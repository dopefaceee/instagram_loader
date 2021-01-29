import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String biography;
  @JsonKey(name: 'external_url')
  String externalUrl;
  // @JsonKey(name: 'edge_followed_by')
  // bool edgeFollowedBy;
  // @JsonKey(name: 'edge_follow')
  // bool edgeFollow;
  @JsonKey(name: 'full_name')
  String fullName;
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
    // this.edgeFollow,
    // this.edgeFollowedBy,
    this.externalUrl,
    this.fullName,
    this.isPrivate,
    this.isVerified,
    this.profilePicUrlHd,
    //this.edgeOwnerToTimelineMedia,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
