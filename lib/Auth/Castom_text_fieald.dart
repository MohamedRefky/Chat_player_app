import 'package:flutter/material.dart';

class ConastTextFieald extends StatelessWidget {
  const ConastTextFieald({
    super.key,
    required this.lable,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.validator,
  });
  final String lable;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      keyboardType: TextInputType.emailAddress,
      validator: validator,
      decoration: InputDecoration(
          suffixIcon: suffixIcon ?? const SizedBox(),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.blueAccent,
            size: 30,
          ),
          label: Text(
            lable,
            style: const TextStyle(
                color: Colors.black54,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
          //hintText: ' Email',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.blueAccent)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.blueAccent)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.red))),
    );
  }
}
