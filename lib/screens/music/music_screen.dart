import 'package:flutter/material.dart';
import './music_card.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: [
            // Music Tab
            ListView.builder(
              itemCount: 20, // Replace with actual music count
              itemBuilder: (context, index) {
                return MusicCard(
                  title: 'Song Title ${index + 1}',
                  artist: 'Artist Name',
                  albumArt: 'https://picsum.photos/seed/$index/200/200',
                  duration:
                      '${(index % 4) + 2}:${(index % 60).toString().padLeft(2, '0')}',
                  isPlaying: index == 0, // Example: first song is playing
                  onTap: () {
                    // TODO: Handle song selection
                  },
                  onPlayPause: () {
                    // TODO: Handle play/pause
                  },
                );
              },
            ),

            // Voice Tab
            ListView.builder(
              itemCount: 15, // Replace with actual voice recordings count
              itemBuilder: (context, index) {
                return MusicCard(
                  title: 'Voice Recording ${index + 1}',
                  artist: 'Recorded ${index + 1} days ago',
                  albumArt: 'https://picsum.photos/seed/voice$index/200/200',
                  duration:
                      '${index % 3}:${(index % 60).toString().padLeft(2, '0')}',
                  isPlaying: false,
                  onTap: () {
                    // TODO: Handle voice recording selection
                  },
                  onPlayPause: () {
                    // TODO: Handle play/pause for voice recording
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
