import 'package:flutter/material.dart';
import './video_card.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return VideoCard(
                    thumbnailUrl: 'https://picsum.photos/seed/$index/320/180',
                    title: 'Video Title $index',
                    author: 'Channel Name',
                    viewCount: '${(index + 1) * 1000}',
                    publishedTime: '${index + 1} days ago',
                    duration:
                        '${(index % 10) + 1}:${(index % 60).toString().padLeft(2, '0')}',
                    onTap: () {
                      // TODO: Navigate to video player
                    },
                  );
                },
                childCount: 20, // Replace with actual video count
              ),
            ),
          ),
        ],
      ),
    );
  }
}
