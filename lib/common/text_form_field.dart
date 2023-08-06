import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/theme/palette.dart';

class ReusableTextField extends StatefulWidget {
  final String labelText;
  final String initialValue;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final bool obscureText;
  final Color borderColor;
  final Color focusedBorderColor;
  final Color cursorColor;
  final double borderRadius;
  final bool isDense;

  final TextEditingController? controller;

  const ReusableTextField({
    Key? key,
    required this.labelText,
    this.initialValue = '',
    this.validator,
    this.onSaved,
    this.obscureText = false,
    this.borderColor = PaletteLightMode.secondaryTextColor,
    this.focusedBorderColor = PaletteLightMode.secondaryGreenColor,
    this.cursorColor = PaletteLightMode.secondaryGreenColor,
    this.borderRadius = 8.0,
    this.isDense = false,
    this.controller,
  }) : super(key: key);

  @override
  State<ReusableTextField> createState() => _ReusableTextFieldState();
}

class _ReusableTextFieldState extends State<ReusableTextField> {
  bool _hasError = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: const TextStyle(
            color: PaletteLightMode.textColor,
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: _hasError ? 50 : 30,
          child: TextFormField(
            controller: widget.controller,
            initialValue: widget.initialValue,
            validator: (value) {
              setState(() {
                _hasError = widget.validator?.call(value) != null;
              });
              return widget.validator?.call(value);
            },
            onSaved: widget.onSaved,
            obscureText: widget.obscureText,
            cursorColor: widget.cursorColor,
            style: const TextStyle(
              fontSize: 14,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                  width: 1,
                  color: widget.borderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                  width: 1,
                  color: widget.borderColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                  width: 1,
                  color: widget.focusedBorderColor,
                ),
              ),
              isDense: widget.isDense,
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              errorMaxLines: null,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
