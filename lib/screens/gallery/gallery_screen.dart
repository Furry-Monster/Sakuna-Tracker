import 'package:flutter/material.dart';
import './picture_card.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10, // Replace with actual post count
        itemBuilder: (context, index) {
          return PictureCard(
            imageUrl: 'https://picsum.photos/seed/$index/400/400',
            username: 'user_${index + 1}',
            caption:
                'This is a beautiful picture from my collection! #photography #nature #beautiful',
            timeAgo: '${index + 1} hours ago',
            likes: (index + 1) * 100,
          );
        },
      ),
    );
  }
}
