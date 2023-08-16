import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty/data/models/character.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.result});
  final Results result;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: MediaQuery.of(context).size.height / 7,
        color: Color.fromRGBO(86, 86, 86, 0.8),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: result.image,
              placeholder: (context, url) => const CircularProgressIndicator(
                color: Colors.grey,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            )
          ],
        ),
      ),
    );
  }
}
