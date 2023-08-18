part of 'ch_bloc.dart';

@freezed
class CharacterState with _$CharacterStates {
  const factory CharacterState.loading() = CharacterStatesLoading;
  const factory CharacterState.loaded({required Character characterLoaded}) =
      CharacterStatesLoaded;
  const factory CharacterState.error() = CharacterStatesError;
}
