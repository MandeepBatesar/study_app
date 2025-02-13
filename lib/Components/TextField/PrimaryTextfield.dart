import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_app/Components/Constants/Stylesheet.dart';
import 'package:study_app/Res/Services/AppServices.dart';

class PrimaryTxtField extends StatefulWidget {
  String hint_txt;
  String? title;
  IconData? suffixicon, prefix;
  Function? suffix_onpressed, onpressed, prefix_onpressed;
  bool obscuretxt;
  bool fillcolor;
  bool readOnly;
  Function(String?)? validator;
  Function(String)? onChanged;
  TextEditingController? controller;
  PrimaryTxtField(
      {super.key,
      required this.hint_txt,
      this.suffixicon,
      this.suffix_onpressed,
      this.onpressed,
      this.fillcolor = false,
      this.obscuretxt = false,
      this.readOnly = false,
      this.validator,
      this.controller,
      this.onChanged,
      this.prefix_onpressed,
      this.title,
      this.prefix});

  @override
  State<PrimaryTxtField> createState() => _common_txtfieldState();
}

class _common_txtfieldState extends State<PrimaryTxtField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.title == null
            ? const SizedBox()
            : Text(
                widget.title!,
                style: AppTextTheme().fs16Normal,
              ),
        heightY(6),
        TextFormField(
          onChanged: (v) => setState(() {
            widget.onChanged != null ? widget.onChanged!(v.toString()) : null;
          }),
          readOnly: widget.readOnly,
          onTap: widget.onpressed != null ? () => widget.onpressed!() : null,
          controller: widget.controller,
          validator: widget.validator == null
              ? null
              : (value) => widget.validator!(value),
          obscureText: widget.obscuretxt,
          decoration: InputDecoration(
              isDense: true,
              // contentPadding: const EdgeInsets.all(15),
              constraints: BoxConstraints(minHeight: 45.h),
              prefixIcon: widget.prefix == null
                  ? null
                  : Icon(
                      widget.prefix,
                      color: AppColors().primary,
                    ),
              suffixIcon: IconButton(
                  onPressed: widget.suffix_onpressed != null
                      ? () => widget.suffix_onpressed!()
                      : null,
                  icon: Icon(
                    widget.suffixicon,
                    color: AppColors().gray,
                  )),
              hintStyle: AppTextTheme().fs16Normal,
              hintText: widget.hint_txt,
              filled: true,
              fillColor:
                  widget.fillcolor ? AppColors().bgclr : AppColors().white,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: AppColors().white)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: AppColors().white)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: AppColors().red)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: AppColors().red))),
        ),
      ],
    );
  }
}
