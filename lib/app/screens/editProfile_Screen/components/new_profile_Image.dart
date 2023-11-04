import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import '../provider/imageProvider.dart';

class NewProfileImage extends StatelessWidget {
  const NewProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    final value = Provider.of<PickImageProvider>(context);

    if (value.imagePath.isNotEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.file(
          File(value.imagePath),
          fit: BoxFit.cover,
          height: 92,
          width: 92,
        ),
      );
    } else {
      return Container();
    }
  }
}
