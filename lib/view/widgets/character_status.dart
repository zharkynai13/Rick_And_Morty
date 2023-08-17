import 'package:flutter/material.dart';

enum LiveState { alive, dead, unknown }

class CharacterStatus extends StatelessWidget {
  const CharacterStatus({super.key, required this.liveState});
  final LiveState liveState;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
