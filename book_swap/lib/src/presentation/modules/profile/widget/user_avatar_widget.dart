import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/widgets/components/effective_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/storage/image_object.dart';

class UserAvatar extends ConsumerWidget {
  const UserAvatar({
    super.key,
    required this.imageObject,
    this.fallback,
    this.size = 50,
  });

  final ImageObject? imageObject;
  final String? fallback;
  final double? size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EffectiveImage(
      width: size,
      height: size,
      imageObject: imageObject,
      shape: ImageShape.circle,
      fallbackWidget: (context) => DecoratedBox(
        decoration: BoxDecoration(
          color: context.bookTheme.dividerColor,
          shape: BoxShape.circle,
        ),
        child: fallback == null
            ? Center(child: Icon(Icons.person, size: (size ?? 50) * 0.5))
            : Center(child: Text(fallback!.toUpperCase())),
      ),
    );
  }
}
