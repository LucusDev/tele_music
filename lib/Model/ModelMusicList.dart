import 'dart:convert';

List<DataMusic> d = [];

class ModelMusicList {
  bool status;
  String msg;
  String imagePath;
  String audioPath;
  List<DataMusic> data;

  ModelMusicList(
      this.status, this.msg, this.data, this.imagePath, this.audioPath);

  factory ModelMusicList.fromJson(Map<String, dynamic> json) {
    if (List<DataMusic>.from(json["data"].map((x) => DataMusic.fromJson(x)))
            .length >
        0) {
      d = List<DataMusic>.from(json["data"].map((x) => DataMusic.fromJson(x)));
    } else {
      d = [];
    }

    return ModelMusicList(
        json['status'], json['msg'], d, json['imagePath'], json['audioPath']);
  }
}

class DataMusic {
  int id;
  String image = "";
  String audio = "";
  String audio_duration = "";
  String audio_title = "";
  String audio_slug = "";
  int audio_genre_id;
  String artist_id = "";
  String artists_name = "";
  String audio_language = "";
  int listening_count;
  int is_featured;
  int is_trending;
  int is_recommended;
  String created_at = "";
  String favourite = "";
  String download_price = "";

  DataMusic(
      this.id,
      this.image,
      this.audio,
      this.audio_duration,
      this.audio_title,
      this.audio_slug,
      this.audio_genre_id,
      this.artist_id,
      this.artists_name,
      this.audio_language,
      this.listening_count,
      this.is_featured,
      this.is_trending,
      this.created_at,
      this.is_recommended,
      this.favourite,
      this.download_price);

  factory DataMusic.fromJson(Map<String, dynamic> json) {
    return DataMusic(
      int.tryParse(json['id'].toString()) ?? 0,
      json['image'],
      json['audio'],
      json['audio_duration'],
      json['audio_title'],
      json['audio_slug'],
      int.tryParse(json['audio_genre_id'].toString()) ?? 0,
      json['artist_id'],
      json['artists_name'],
      json['audio_language'],
      int.tryParse(json['listening_count'].toString()) ?? 0,
      int.tryParse(json['is_featured'].toString()) ?? 0,
      int.tryParse(json['is_trending'].toString()) ?? 0,
      json['created_at'],
      int.tryParse(json['is_recommended'].toString()) ?? 0,
      json['favourite'],
      (json['download_price'] ?? '').toString(),
    );
  }
}
