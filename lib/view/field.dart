import 'package:flutter/material.dart';

import '../helpers/utils.dart';

enum FieldBorderType {underline, outlined}

class Field extends StatelessWidget {

  final TextEditingController? controller;
  final EdgeInsets padding;
  final String? label;
  final Color labelColor;
  final String hint;
  final Color hintColor;
  final ValueChanged<String>? onFieldSubmitted;
  final Icon? suffixIcon;
  final VoidCallback? onSuffixPressed;
  final Color buttonsColor;
  final Color? borderColor;
  final FieldBorderType borderType;
  final Color? filledColor;
  final FormFieldValidator<String>? validator;
  final Widget? prefixIcon;
  final Color textColor;
  final bool obscureText;
  final TextInputType? keyboardType;
  final bool readOnly;
  const Field({
    Key? key,
    this.controller,
    this.padding = EdgeInsets.zero,
    this.label,
    this.labelColor = verde1,
    this.hint = '',
    this.hintColor = verde1,
    this.onFieldSubmitted,
    this.suffixIcon,
    this.onSuffixPressed,
    this.buttonsColor = Colors.black,
    this.borderColor,
    this.borderType = FieldBorderType.outlined,
    this.filledColor = Colors.white,
    this.validator,
    this.prefixIcon,
    this.textColor = darkTextColor,
    this.obscureText = false,
    this.keyboardType,
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Text Field
    Widget widgetField =  Container(
      margin: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: shadowColor,
            blurRadius: 3,
            spreadRadius: 0,
            offset: Offset(0, 3)
          ),
        ]
      ),
      child: TextFormField(
        controller: controller,
        validator: validator,
        style: TextStyle(color: textColor),
        readOnly: readOnly,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 15,
            right: suffixIcon == null ? 15 : 35,
          ),
          isDense: true,
          errorStyle: const TextStyle(height: 0.25, fontSize: 14),
          hintText: hint,
          fillColor: filledColor,
          filled: filledColor != null,
          floatingLabelStyle: TextStyle(fontSize: 14, color: labelColor),
          labelStyle: TextStyle(fontSize: 14, color: labelColor),
          //labelText: label,
          label: label == null ? null : Text(label!),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: TextStyle(fontSize: 14, color: hintColor),
          prefixIcon: prefixIcon,
          counterText: '',
        ),
      )
    );

    //Return
    return suffixIcon == null ? widgetField : Stack(
      alignment: Alignment.centerRight,
      children: [
        widgetField,
        Padding(
          padding: padding.copyWith(left: 0),
          child: SizedBox(
            width: 35,
            child: IconButton(
              icon: suffixIcon!,
              color: buttonsColor,
              iconSize: 20,
              padding: EdgeInsets.zero,
              onPressed: onSuffixPressed,
            )
          ),
        ),
      ],
    );
  }
}
class LabelField extends StatelessWidget {
  final String label;
  const LabelField(this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(color: verde1, fontFamily: 'ProximaSoft', fontSize: 18),
    );
  }
}