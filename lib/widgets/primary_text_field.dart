import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class PrimaryTextField extends StatefulWidget {
  final String? hint;
  final Widget?error;
  final String?counter;
  final Widget?icon;
  final bool?alignLabelWithHint;
  final TextEditingController?controller;
  const PrimaryTextField({super.key,this.hint,this.error, this.counter, this.icon, this.alignLabelWithHint, this.controller});

  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w,left: 20.w),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.w),
          ),
          hintText: widget.hint,
            error: widget.error,
          counterText: widget.counter,
          suffix: widget.icon,
          alignLabelWithHint:widget.alignLabelWithHint,
        ),
      ),
    );
  }
}
