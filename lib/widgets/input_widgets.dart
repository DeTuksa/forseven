import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forseven/core/utils/padding_extension.dart';

class FSInputField extends StatelessWidget {
  final String? hintText;
  final String? suffixText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final VoidCallback? toggleEye;
  final KeyboardType? keyboard;
  final String? init;
  final bool isPassword;
  final Color? isPasswordColor;
  final bool? showObscureText;
  final bool obscureText;
  final Color? styleColor;
  final Color? hintStyleColor;
  final bool enabled;
  final String? labelText;
  final double? labelTextFont;
  final dynamic maxLines;
  final Color borderColor;
  final Widget? prefix;
  final String? prefixText;
  final TextStyle? prefixStyle;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final Color fillColor;
  final bool isError;
  final String showErrorText;
  final Color enabledBorder;
  final Color focusedBorder;
  final Color labelTextColor;
  final Widget? suffix;
  final VoidCallback? onEditingComplete;
  final int? maxLength;

  FSInputField(
      {this.hintText,
        this.suffixText,
        this.validator,
        this.onSaved,
        this.toggleEye,
        this.init,
        this.isPassword = false,
        this.isPasswordColor,
        this.showObscureText,
        this.obscureText = false,
        this.keyboard,
        this.styleColor,
        this.hintStyleColor,
        this.enabled = true,
        this.labelText,
        this.labelTextFont,
        this.onEditingComplete,
        this.maxLength,

        this.maxLines = 1,
        this.borderColor = Colors.blueGrey,
        this.onChanged,
        this.prefix,
        this.prefixText,
        this.prefixStyle,
        this.suffix,
        this.controller,
        this.inputFormatters,
        this.fillColor = Colors.transparent,
        this.isError = false,
        this.showErrorText = "field can't be empty",
        this.enabledBorder = Colors.blueGrey,
        this.focusedBorder = Colors.blueGrey,
        this.labelTextColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      labelText == null ? Container() : Text(
        '$labelText',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        ),
      ),
      12.ph,
      Padding(
        padding: const EdgeInsets.all(0),
        child: TextFormField(
          inputFormatters: inputFormatters,
          controller: controller,
          key: key,
          enabled: enabled,
          style: TextStyle(color: Theme.of(context).unselectedWidgetColor),
          cursorColor: Theme.of(context).unselectedWidgetColor,
          obscureText: obscureText,
          maxLines: maxLines,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            hintText: hintText,
            prefixIcon: prefix,
            prefixText: prefixText,
            prefixStyle: const TextStyle(
                color: Colors.black
            ),
            suffixText: suffixText,
            filled: true,
            fillColor: fillColor,
            // hintStyle: TextStyle(color: WowTheme.primarySwatch.shade200),
            isDense: true,
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            // contentPadding: EdgeInsets.only(top: 10, bottom: 10),
            suffixIcon: isPassword
                ? GestureDetector(
              onTap: toggleEye,
              child: Icon(
                showObscureText!
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: const Color(0xFFC0C1C3),
              ),
            )
                : suffix,
            errorText: isError ? showErrorText : null,
          ),
          validator: validator,
          initialValue: init,
          onSaved: onSaved,
          keyboardType: keyboard == KeyboardType.email
              ? TextInputType.emailAddress
              : keyboard == KeyboardType.number
              ? TextInputType.number
              : keyboard == KeyboardType.phone
              ? TextInputType.phone
              : TextInputType.text,
          maxLength: maxLength,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
        ),
      ),
    ]);
  }
}

enum KeyboardType { email, phone, number, text }