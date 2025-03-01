import 'package:flutter/material.dart';

import '../app/app_style_extension.dart';
import '../app/app_theme_extension.dart';

/// A card widget that displays a book cover and basic information
class BookCard extends StatelessWidget {
  final String title;
  final String author;
  final String? coverUrl;
  final String? status;
  final double? rating;
  final VoidCallback? onTap;

  const BookCard({
    super.key,
    required this.title,
    required this.author,
    this.coverUrl,
    this.status,
    this.rating,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bookTheme = theme.bookTheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: ASX.bookGridItemWidth,
        height: ASX.bookGridItemHeight,
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.circular(ASX.cardRadius),
          boxShadow: ASX.softShadow,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Book cover
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(ASX.cardRadius),
                topRight: Radius.circular(ASX.cardRadius),
              ),
              child: Stack(
                children: [
                  // Cover image or placeholder
                  Container(
                    height: 160,
                    width: double.infinity,
                    color: theme.colorScheme.primaryContainer,
                    child: coverUrl != null && coverUrl!.isNotEmpty
                        ? Image.network(
                            coverUrl!,
                            fit: BoxFit.cover,
                          )
                        : Center(
                            child: Icon(
                              Icons.book,
                              size: 48,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                  ),

                  // Gradient overlay
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: bookTheme.bookCoverGradient,
                      ),
                    ),
                  ),

                  // Status indicator
                  if (status != null)
                    Positioned(
                      top: 8,
                      right: 8,
                      child: _buildStatusIndicator(context, status!),
                    ),

                  // Rating
                  if (rating != null)
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: _buildRating(context, rating!),
                    ),
                ],
              ),
            ),

            // Book info
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    author,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(0.7),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusIndicator(BuildContext context, String status) {
    final bookTheme = Theme.of(context).bookTheme;

    Color statusColor;
    switch (status.toLowerCase()) {
      case 'available':
        statusColor = bookTheme.statusAvailable;
        break;
      case 'unavailable':
        statusColor = bookTheme.statusUnavailable;
        break;
      case 'pending':
        statusColor = bookTheme.statusPending;
        break;
      case 'reserved':
        statusColor = bookTheme.statusReserved;
        break;
      default:
        statusColor = bookTheme.statusAvailable;
    }

    return Container(
      width: ASX.statusIndicatorSize,
      height: ASX.statusIndicatorSize,
      decoration: BoxDecoration(
        color: statusColor,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: ASX.statusIndicatorBorderWidth,
        ),
      ),
    );
  }

  Widget _buildRating(BuildContext context, double rating) {
    final bookTheme = Theme.of(context).bookTheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            size: 14,
            color: bookTheme.ratingActiveColor,
          ),
          const SizedBox(width: 2),
          Text(
            rating.toStringAsFixed(1),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
