import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty/data/models/character.dart';
import 'package:rick_morty/view/widgets/character_status.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.result});
  final Results result;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: MediaQuery.of(context).size.height / 7,
        color: Color.fromARGB(204, 45, 45, 45),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: result.image,
              placeholder: (context, url) => const CircularProgressIndicator(
                color: Colors.grey,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.92,
                    child: Text(result.name,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CharacterStatus(
                      liveState: result.status == "Alive"
                          ? LiveState.alive
                          : result.status == "Dead"
                              ? LiveState.dead
                              : LiveState.unknown),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Species",
                              style: TextStyle(color: Colors.green),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              result.species,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Gender",
                              style: TextStyle(color: Colors.green),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              result.gender,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
