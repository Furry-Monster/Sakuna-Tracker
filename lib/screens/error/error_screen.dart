import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ErrorScreen extends StatelessWidget {
  final String? errorMessage;
  final String? errorDetails;

  const ErrorScreen({
    super.key,
    this.errorMessage = 'Something went wrong.',
    this.errorDetails,
  });

  Future<void> _reportError(BuildContext context) async {
    try {
      final url = Uri.parse(
          'mailto:4urrym0nster@gmail.com?subject=App Error Report&body=${Uri.encodeComponent(errorDetails ?? errorMessage!)}');
      if (!await canLaunchUrl(url)) {
        throw Exception('Could not launch $url');
      }
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Could not send error report: $e'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.error.withOpacity(0.8),
              Theme.of(context).colorScheme.error,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    color: Theme.of(context).colorScheme.onError,
                    size: 80,
                    semanticLabel: 'Error',
                  ),
                  const SizedBox(height: 24),
                  Text(
                    errorMessage ?? 'An unexpected error occurred',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Theme.of(context).colorScheme.onError,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  FilledButton.icon(
                    onPressed: () => _reportError(context),
                    icon: const Icon(Icons.bug_report_outlined),
                    label: const Text('Report Error'),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      if (Navigator.of(context).canPop()) {
                        Navigator.of(context).pop();
                      }
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Theme.of(context).colorScheme.onError,
                    ),
                    child: const Text('Go Back'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
