import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wirtwirt_common/wirtwirt_common.dart';

/// Placeholder widget showing a message and CTA to go back to the home screen.
class EmptyPlaceholderWidget extends StatelessWidget {
  final String message;
  final String homePath;

  const EmptyPlaceholderWidget({
    super.key,
    required this.message,
    required this.homePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              message,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            gapH32,
            PrimaryButton(
              onPressed: () => context.goNamed(homePath),
              text: 'Go Home',
            )
          ],
        ),
      ),
    );
  }
}
