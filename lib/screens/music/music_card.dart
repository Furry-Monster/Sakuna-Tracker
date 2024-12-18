import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  final String title;
  final String artist;
  final String albumArt;
  final String duration;
  final bool isPlaying;
  final VoidCallback? onTap;
  final VoidCallback? onPlayPause;

  const MusicCard({
    super.key,
    required this.title,
    required this.artist,
    required this.albumArt,
    required this.duration,
    this.isPlaying = false,
    this.onTap,
    this.onPlayPause,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              // Album Art
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image.network(
                  albumArt,
                  width: 56.0,
                  height: 56.0,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 56.0,
                      height: 56.0,
                      color: Colors.grey[300],
                      child: const Icon(Icons.music_note),
                    );
                  },
                ),
              ),
              const SizedBox(width: 12.0),

              // Title and Artist
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      artist,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14.0,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),

              // Duration
              Text(
                duration,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(width: 8.0),

              // Play/Pause Button
              IconButton(
                icon: Icon(
                  isPlaying
                      ? Icons.pause_circle_filled
                      : Icons.play_circle_filled,
                  color: Theme.of(context).primaryColor,
                  size: 32.0,
                ),
                onPressed: onPlayPause,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
