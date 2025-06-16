import 'package:club_sync/style/style.dart';
import 'package:flutter/material.dart';

enum CSTextFieldType { text, password }

class CSTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? Function(String?)? validator;
  final CSTextFieldType csTextFieldType;

  const CSTextField({
    super.key,
    required this.controller,
    this.labelText,
    this.validator,
    this.csTextFieldType = CSTextFieldType.text,
  });

  @override
  State<CSTextField> createState() => _CSTextFieldState();
}

class _CSTextFieldState extends State<CSTextField> {
  Widget suffixIcon = const SizedBox();
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.csTextFieldType) {
      case CSTextFieldType.password:
        suffixIcon = IconButton(
          icon: Icon(
            showPassword ? Icons.visibility : Icons.visibility_off,
          ),
          color: Colors.grey,
          highlightColor: Colors.transparent,
          onPressed: () {
            setState(() {
              showPassword = !showPassword;
            });
          },
        );
        break;
      case CSTextFieldType.text:
      default:
        suffixIcon = const SizedBox();
        break;
    }

    return TextFormField(
      controller: widget.controller,
      obscureText: showPassword,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        floatingLabelStyle: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: CSColors.primaryColor),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: CSColors.primaryColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: CSColors.errorColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: CSColors.errorColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
        suffixIcon: suffixIcon,
      ),
      cursorColor: CSColors.primaryColor,
      validator: widget.validator,
    );
  }
}
