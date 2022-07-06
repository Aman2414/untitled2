import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final Widget? label;
  final bool obscureText;
  final IconData? suffixIcon;
  final void Function()? iconOnTap;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final Color focusedBorderColor;
  final String? hintText;

  const CustomTextField({
    Key? key,
    this.label,
    this.obscureText = false,
    this.suffixIcon,
    this.iconOnTap,
    this.controller,
    this.onChanged,
    this.validator,
    this.autovalidateMode,
    this.focusedBorderColor = const Color(0xff210fe1),
    this.hintText,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: widget.autovalidateMode,
      validator: widget.validator,
      onChanged: widget.onChanged,
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: GestureDetector(
          onTap: widget.iconOnTap,
          child: Icon(widget.suffixIcon),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(
            color: widget.focusedBorderColor,
          ),
        ),
        fillColor: Colors.white,
        filled: true,
        label: widget.label,
      ),
    );
  }
}
