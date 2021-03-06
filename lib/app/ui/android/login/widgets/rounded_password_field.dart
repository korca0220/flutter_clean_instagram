import 'package:flutter/material.dart';
import 'package:flutter_clean_instagram/app/ui/android/login/widgets/validations.dart';
import 'package:flutter_clean_instagram/app/ui/android/login/widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Align(
        alignment: Alignment.topCenter,
        child: TextFormField(
          controller: controller,
          obscureText: true,
          maxLines: 1,
          decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: Colors.grey,
              size: 25,
            ),
            isDense: true,
            hintText: "Your Password",
            hintStyle: TextStyle(
              fontSize: 15,
            ),
            border: InputBorder.none,
            errorStyle: TextStyle(height: 0.1),
          ),
          validator: Validations.validatePassword,
          onChanged: onChanged,
          keyboardType: TextInputType.emailAddress,
        ),
      ),
    );
  }
}
