import 'package:json_annotation/json_annotation.dart';

part 'AlbumDetail.g.dart';
@JsonSerializable()
class AlbumDetail {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  AlbumDetail(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory AlbumDetail.fromJson(Map<String, dynamic> json) =>
      _$AlbumDetailFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumDetailToJson(this);

}
