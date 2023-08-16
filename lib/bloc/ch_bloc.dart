import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_morty/data/constants/const_api.dart';
import 'package:rick_morty/data/models/character.dart';

part 'ch_bloc.freezed.dart';
//part 'ch_bloc.freezed.g.dart';
part 'events.dart';
part 'states.dart';

class CharacterBloc extends Bloc<CharacterEvents, CharacterStates> {
  final CharacterApiConst characterRepo;
  CharacterBloc({required this.characterRepo})
      : super(CharacterStates.loading()) {
    on<CharacterEventsFetch>((event, emit) async {
      emit(const CharacterStates.loading());

      Character _characterLoaded =
          await characterRepo.getCharacter(event.page, event.name);
      emit(CharacterStates.loaded(characterLoaded: _characterLoaded));
    });
  }
}
