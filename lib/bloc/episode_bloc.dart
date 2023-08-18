// import 'package:flutter_bloc/flutter_bloc.dart';;
// import 'package:rick_morty/data/models/episode.dart';

// part 'episode_bloc.freezed.dart';
// part 'events.dart';
// part 'states.dart';

// class EpisodeBloc extends Bloc<EpisodeEvents, EpisodeStates> {
//   final EpisodeApiConst EpisodeRepo;

//   EpisodeBloc({required this.episodeRepo})
//       : super(const EpisodeStates.loading()) {
//     on<EpisodeEventsFetch>((event, emit) async {
//       emit(const EpisodeStates.loading());
//       try {
//         Episode _episodeLoaded =
//             await episodeRepo.getEpisode(event.page, event.name);
//         emit(EpisodeStates.loaded(episodeLoaded: _episodeLoaded));
//       } catch (e) {
//         emit(const EpisodeStates.error());
//       }
//     });
//   }
// }