import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  final String text;
  final String link;
  const LinkButton({
    super.key,
    required this.text,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        launchUrl(
          Uri.parse(link),
          mode: LaunchMode.externalApplication,
        );
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 14, color: Colors.white),
      ),
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          // ignore: deprecated_member_use
          primary: Colors.white,
          backgroundColor: Color(0xff333333),
          minimumSize: Size.fromHeight(54)),
    );
  }
}
