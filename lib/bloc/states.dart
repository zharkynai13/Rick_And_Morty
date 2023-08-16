part of 'ch_bloc.dart';

@freezed
class CharacterStates with _$CharacterStates {
  const factory CharacterStates.loading() = CharacterStatesLoading;
  const factory CharacterStates.loaded({required Character characterLoaded}) =
      CharacterStatesLoaded;
  const factory CharacterStates.error() = CharacterStatesError;
}
