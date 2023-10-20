import 'package:flutter/material.dart';

class OTPControllerProvider extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  TextEditingController pin1 = TextEditingController();
  TextEditingController pin2 = TextEditingController();
  TextEditingController pin3 = TextEditingController();
  TextEditingController pin4 = TextEditingController();
}
