import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImages extends StatelessWidget {
  const CachedImages({
    super.key,
    required this.img,
    required this.widget,
  });
  final String? img;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: img ?? '',
      imageBuilder: (context, imageProvider) => widget,
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator(),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
