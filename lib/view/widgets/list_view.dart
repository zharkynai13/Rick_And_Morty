import 'package:flutter/material.dart';
import 'package:rick_morty/data/models/character.dart';
import 'package:rick_morty/view/widgets/custom_list_tile.dart';

Widget getCharacters(List<Results> currentResults) {
  return ListView.separated(
    itemCount: currentResults.length,
    separatorBuilder: (_, index) => const SizedBox(
      height: 5,
    ),
    shrinkWrap: true,
    itemBuilder: (BuildContext context, int index) {
      final result = currentResults[index];
      return Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 3, bottom: 3),
          child: CustomListTile(
            result: result,
          ));
    },
  );
}
