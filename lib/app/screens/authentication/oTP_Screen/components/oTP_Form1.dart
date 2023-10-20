import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class OTPForm extends StatelessWidget {
  const OTPForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 84,
          width: 58,
          child: Focus(
            onFocusChange: (hasFocus) {
              // Handle focus change if needed
            },
            child: Builder(
              builder: (BuildContext context) {
                final focusNode = Focus.of(context);
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: focusNode.hasFocus
                            ? Color(0xffCA8385)
                            : const Color.fromARGB(88, 158, 158, 158),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    onChanged: (value) {
                      FocusScope.of(context).nextFocus();
                    },
                    onSaved: (pin1) {},
                    decoration: InputDecoration(
                      hintText: '',
                      hintStyle: TextStyle(color: Color.fromARGB(33, 0, 0, 0)),
                      border: InputBorder.none,
                    ),
                    style: Theme.of(context).textTheme.headlineLarge,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 84,
          width: 58,
          child: Focus(
            onFocusChange: (hasFocus) {
              // Handle focus change if needed
            },
            child: Builder(
              builder: (BuildContext context) {
                final focusNode = Focus.of(context);
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: focusNode.hasFocus
                            ? Color(0xffCA8385)
                            : const Color.fromARGB(88, 158, 158, 158),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    onChanged: (value) {
                      FocusScope.of(context).nextFocus();
                    },
                    onSaved: (pin2) {},
                    decoration: InputDecoration(
                      hintText: '',
                      hintStyle: TextStyle(color: Color.fromARGB(33, 0, 0, 0)),
                      border: InputBorder.none,
                    ),
                    style: Theme.of(context).textTheme.headlineLarge,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 84,
          width: 58,
          child: Focus(
            onFocusChange: (hasFocus) {
              // Handle focus change if needed
            },
            child: Builder(
              builder: (BuildContext context) {
                final focusNode = Focus.of(context);
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: focusNode.hasFocus
                            ? Color(0xffCA8385)
                            : const Color.fromARGB(88, 158, 158, 158),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    onChanged: (value) {
                      FocusScope.of(context).nextFocus();
                    },
                    onSaved: (pin3) {},
                    decoration: InputDecoration(
                      hintText: '',
                      hintStyle: TextStyle(color: Color.fromARGB(33, 0, 0, 0)),
                      border: InputBorder.none,
                    ),
                    style: Theme.of(context).textTheme.headlineLarge,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 84,
          width: 58,
          child: Focus(
            onFocusChange: (hasFocus) {
              // Handle focus change if needed
            },
            child: Builder(
              builder: (BuildContext context) {
                final focusNode = Focus.of(context);
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: focusNode.hasFocus
                            ? Color(0xffCA8385)
                            : const Color.fromARGB(88, 158, 158, 158),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    onChanged: (value) {
                      FocusScope.of(context).nextFocus();
                    },
                    onSaved: (pin4) {},
                    decoration: InputDecoration(
                      hintText: '',
                      hintStyle: TextStyle(color: Color.fromARGB(33, 0, 0, 0)),
                      border: InputBorder.none,
                    ),
                    style: Theme.of(context).textTheme.headlineLarge,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    ));
  }
}
