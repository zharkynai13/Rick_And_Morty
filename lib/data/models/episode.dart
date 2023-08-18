import 'package:freezed_annotation/freezed_annotation.dart';
part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
  const factory Episode({
    required List<ResultsEPi> resulte,
    required Info info,
  }) = _Episode;
  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}

@freezed
class Info with _$Info {
  const factory Info({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _Info;
  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@freezed
class ResultsEPi with _$ResultsEPi {
  const factory ResultsEPi(
      {required int id,
      required String name,
      required String episode,
      required DateTime created}) = _Results;
  factory ResultsEPi.fromJson(Map<String, dynamic> json) =>
      _$ResultsEPiFromJson(json);
}
