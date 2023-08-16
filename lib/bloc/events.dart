part of 'ch_bloc.dart';

@freezed
class CharacterEvents with _$CharacterEvents {
  const factory CharacterEvents.fetch({
    required String name,
    required int page,
  }) = CharacterEventsFetch;
}
