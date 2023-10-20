import 'package:flutter/material.dart';

class ShortCodeControllerProvider extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  TextEditingController shortCodeTextController = TextEditingController();
}
