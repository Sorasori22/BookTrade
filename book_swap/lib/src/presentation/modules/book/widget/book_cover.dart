import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:book_swap/src/presentation/widgets/components/effective_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../app/app_style.dart';

class BookCover extends ConsumerWidget {
  const BookCover({
    super.key,
    required this.cover,
    this.edgeShadow = true,
    this.borderRadius = AS.radiusM,
    this.cacheImage = true,
  });

  final ImageObject? cover;
  final bool edgeShadow;
  final double borderRadius;
  final bool cacheImage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: const [
          BoxShadow(
            offset: Offset(1.2, 0),
            blurRadius: 1,
            color: Colors.black45,
          ),
        ],
      ),
      child: AspectRatio(
        aspectRatio: AS.bookCoverAspectRatio,
        child: Stack(
          fit: StackFit.expand,
          children: [
            EffectiveImage(
              imageObject: cover,
              fit: BoxFit.cover,
              borderRadius: borderRadius,
              cache: cacheImage,
            ),
            if (edgeShadow)
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 3.5),
                    width: 2,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1.2, 0),
                          blurRadius: 0.8,
                          color: Colors.black38,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
