import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewPage extends ConsumerStatefulWidget {
  const PhotoViewPage({
    super.key,
    required this.image,
    this.heroTag,
    this.backgroundColor = Colors.black,
  });

  final ImageObject image;
  final String? heroTag;
  final Color backgroundColor;

  static Future<void> show(BuildContext context, ImageObject image, {String? heroTag}) {
    return context.pushTo(
      (_) => PhotoViewPage(
        image: image,
        heroTag: heroTag,
      ),
    );
  }

  @override
  ConsumerState<PhotoViewPage> createState() => _PhotoViewPageState();
}

class _PhotoViewPageState extends ConsumerState<PhotoViewPage> {
  bool _isFullScreen = false;

  void _toggleFullScreen() {
    setState(() {
      _isFullScreen = !_isFullScreen;
      if (_isFullScreen) {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
      } else {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      }
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: widget.backgroundColor,
      appBar: _isFullScreen
          ? null
          : AppBar(
              title: const Text('Photo'),
              foregroundColor: Colors.white,
              backgroundColor: Colors.black87,
              elevation: 0,
            ),
      body: GestureDetector(
        onTap: _toggleFullScreen,
        child: Container(
          constraints: BoxConstraints.expand(
            height: MediaQuery.of(context).size.height,
          ),
          child: PhotoView(
            imageProvider: CachedNetworkImageProvider(widget.image.getUrl()),
            loadingBuilder: (context, event) => Center(
              child: CircularProgressIndicator(
                value: event?.expectedTotalBytes != null
                    ? event!.cumulativeBytesLoaded / event.expectedTotalBytes!
                    : null,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            errorBuilder: (context, error, stackTrace) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: Colors.white,
                    size: 32,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Failed to load image',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
            heroAttributes:
                widget.heroTag != null ? PhotoViewHeroAttributes(tag: widget.heroTag!) : null,
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 3,
            initialScale: PhotoViewComputedScale.contained,
            backgroundDecoration: BoxDecoration(color: widget.backgroundColor),
            enableRotation: true,
            scaleStateChangedCallback: (state) {
              // You can handle scale state changes here if needed
            },
          ),
        ),
      ),
    );
  }
}
