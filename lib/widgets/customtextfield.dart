import 'package:evently/theme/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      required this.imagepath,
      this.showsuffix = false,
      required this.hinttext,
      this.obsecuretext = false,
      required this.controller,
      this.validator});

  String imagepath;
  bool showsuffix;
  String hinttext;
  bool obsecuretext;
  TextEditingController controller;
  String? Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: widget.obsecuretext,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppTheme.gray,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppTheme.primary,
            width: 3.0,
          ),
        ),
        hintText: widget.hinttext,
        hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppTheme.gray,
            ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset(
            widget.imagepath,
            colorFilter: ColorFilter.mode(
              AppTheme.gray,
              BlendMode.srcIn,
            ),
          ),
        ),
        prefixIconConstraints: BoxConstraints.tight(Size(55, 55)),
        suffixIcon: widget.showsuffix
            ? IconButton(
                onPressed: () {
                  widget.obsecuretext = !widget.obsecuretext;
                  setState(() {});
                },
                icon: Icon(
                  widget.obsecuretext ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : null,
        suffixIconConstraints: BoxConstraints.tight(Size(55, 55)),
      ),
    );
  }
}
