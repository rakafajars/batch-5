import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormGlobalWidget extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final String? errorText;

  const FormGlobalWidget({
    super.key,
    required this.title,
    required this.hintText,
    this.controller,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.onChanged,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: Text(title),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            onChanged: onChanged,
            validator: validator,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.deny("0"),
            ],
            decoration: InputDecoration(
              hintText: hintText,
              errorText: errorText,
              enabled: true,
              suffixIcon: suffixIcon,
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(54),
                ),
                borderSide: BorderSide(
                  color: Colors.green,
                ),
              ),
              disabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(24),
                ),
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
                borderSide: BorderSide(
                  color: Color(0xFFCED4DA),
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
