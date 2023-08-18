import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_morty/data/constants/const_api.dart';
import 'package:rick_morty/data/models/character.dart';

part 'ch_bloc.freezed.dart';
part 'events.dart';
part 'states.dart';

class CharacterBloc extends Bloc<CharacterEvents, CharacterState> {
  final CharacterApiConst characterRepo;

  CharacterBloc({required this.characterRepo})
      : super(const CharacterState.loading()) {
    on<CharacterEventsFetch>((event, emit) async {
      emit(const CharacterState.loading());
      try {
        Character _characterLoaded =
            await characterRepo.getCharacter(event.page, event.name);
        emit(CharacterState.loaded(characterLoaded: _characterLoaded));
      } catch (e) {
        emit(const CharacterState.error());
      }
    });
  }
}
