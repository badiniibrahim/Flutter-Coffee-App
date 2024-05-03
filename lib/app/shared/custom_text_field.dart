import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.label,
    required this.isPassword,
    this.icon,
    this.prefix,
  });
  final String hintText;
  final String label;
  final bool isPassword;
  final Image? icon;
  final Image? prefix;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        SizedBox(
          height: 75,
          width: 341,
          child: TextField(
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            obscureText: isPassword,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              label: Text(
                label.toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w500,
              ),
              suffixIcon: isPassword ? icon : const SizedBox(),
              prefixIcon: prefix,
            ),
          ),
        )
      ],
    );
  }
}
