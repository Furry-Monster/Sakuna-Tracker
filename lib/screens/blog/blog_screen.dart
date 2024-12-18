import 'package:flutter/material.dart';
import 'package:sakuna_tracker/screens/blog/blog_card.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 10, // Placeholder count
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: GestureDetector(
              child: BlogCard(
                title: 'Blog Post ${index + 1}',
                author: 'Author Name',
                brief:
                    'This is a brief description of the blog post content. It gives readers a quick preview of what the article is about.',
                coverUrl:
                    'https://picsum.photos/seed/$index/800/400', // Placeholder image
                publishedTime: DateTime.now().subtract(const Duration(days: 2)),
                onTap: () {
                  // TODO: Navigate to detail page
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
