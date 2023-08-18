import 'package:flutter/material.dart';
import 'package:rick_morty/data/models/character.dart';
import 'package:rick_morty/view/widgets/character_status.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key, required this.result, required this.liveState});
  final Results result;
  final LiveState liveState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(result.name),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Container(
          width: 500,
          height: 750,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.blue, Color.fromARGB(255, 0, 77, 115)]),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Column(
              children: [
                Image.network(
                  result.image,
                  width: double.infinity,
                ),
                Text(
                  result.name,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle,
                        size: 11,
                        color: liveState == LiveState.alive
                            ? Colors.lightGreenAccent[400]
                            : liveState == LiveState.dead
                                ? Colors.red
                                : Colors.white),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      liveState == LiveState.alive
                          ? "Alive"
                          : liveState == LiveState.dead
                              ? "Dead"
                              : "Unknown",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Species",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          result.species,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Gender",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          result.gender,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
