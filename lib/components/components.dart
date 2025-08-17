import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:flutter_radio_group/flutter_radio_group.dart';
import 'package:intl/intl.dart';
import 'package:smart_education_institution_mobile/app_localization.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';

class CustomTextFormFiled extends StatefulWidget {
  final TextEditingController controller;
  final dynamic borderColor;
  final dynamic iconColor;
  final TextInputType type;
  final dynamic label;
  final dynamic onSubmit;
  final dynamic onChange;
  final dynamic onTap;
  final dynamic validate;
  final dynamic prefix;
  final bool isPassword;
  final bool readOnly;
  final bool border;
  final String? hintText;

  const CustomTextFormFiled({
    super.key,
    this.label,
    required this.controller,
    required this.type,
    this.prefix,
    this.onSubmit,
    this.onChange,
    this.validate,
    this.onTap,
    this.isPassword = false,
    this.borderColor,
    this.iconColor,
    this.readOnly = false,
    this.border = true,
    this.hintText,
  });

  @override
  CustomTextFormFiledState createState() => CustomTextFormFiledState();
}

class CustomTextFormFiledState extends State<CustomTextFormFiled> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: widget.readOnly,
      controller: widget.controller,
      keyboardType: widget.type,
      onFieldSubmitted: widget.onSubmit,
      onChanged: widget.onChange,
      onTap: widget.onTap,
      validator: widget.validate,
      obscureText: _obscureText,
      cursorColor: widget.borderColor,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: _togglePasswordVisibility,
                child: Icon(
                  _obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              )
            : null,
        prefixIcon: Icon(widget.prefix),
        labelText: widget.label,
        prefixIconColor: widget.iconColor,
        enabledBorder: widget.border
            ? OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              )
            : UnderlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor),
              ),
        focusedBorder: widget.border
            ? OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              )
            : UnderlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor),
              ),
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final double width;
  final double height;
  final Color background;
  final String text;
  final double fontSize;
  final VoidCallback onPress;

  const DefaultButton({
    super.key,
    required this.background,
    this.width = double.infinity,
    this.height = 50.0,
    required this.text,
    this.fontSize = 18,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(15),
      ),
      child: MaterialButton(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(style: BorderStyle.none),
        ),
        onPressed: onPress,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

class DefaultText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final dynamic fontWeight;
  final dynamic overflow;
  final dynamic maxLines;

  const DefaultText({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    this.fontWeight,
    this.overflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight),
    );
  }
}

class DefaultTextButton extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final dynamic onPressed;
  final dynamic fontWeight;
  final dynamic textDecoration;
  final dynamic overflow;
  final dynamic maxLines;

  const DefaultTextButton({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    required this.onPressed,
    this.fontWeight,
    this.textDecoration,
    this.overflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(padding: WidgetStatePropertyAll(EdgeInsets.all(0))),
      child: Text(
        text,

        overflow: overflow,
        maxLines: maxLines,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          decoration: textDecoration,
          decorationColor: defaultColor,
        ),
      ),
    );
  }
}

void navigateTo(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return screen;
      },
    ),
  );
}

void navigateAndFinish(BuildContext context, Widget screen) =>
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return screen;
        },
      ),
    );

class LogoComponent extends StatelessWidget {
  const LogoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 110,
        width: 350,
        child: Image.asset('assets/images/SMART.png', fit: BoxFit.cover),
      ),
    );
  }
}

class DefaultIconButton extends StatefulWidget {
  final Function onPressed;
  final Icon icon;
  final double size;
  final Color color;

  const DefaultIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.size = 35,
    required this.color,
  });

  @override
  State<DefaultIconButton> createState() => _DefaultIconButtonState();
}

class _DefaultIconButtonState extends State<DefaultIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          widget.onPressed();
        });
      },
      icon: widget.icon,
      style: ButtonStyle(
        iconSize: WidgetStatePropertyAll(widget.size),
        iconColor: WidgetStatePropertyAll(widget.color),
      ),
    );
  }
}

class DatePicked extends StatefulWidget {
  const DatePicked({super.key});

  @override
  State<DatePicked> createState() => _DatePickedState();
}

class _DatePickedState extends State<DatePicked> {
  DateTime datePicked = DateTime.now();
  var selectDate ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 15,
      onTap: () async {

        datePicked = (await DatePicker.showSimpleDatePicker(
          context,
          lastDate: DateTime.now(),
          initialDate: DateTime.now(),
          //lastDate: DateTime.now(),
          dateFormat: "dd-MMM-yyyy",
          locale: DateTimePickerLocale.en_us,
          looping: false,
          titleText: 'Select_Date'.tr(context),
          cancelText: 'Cancel'.tr(context),
          confirmText: 'Ok'.tr(context),
          textColor: defaultColor,
        ))!;
        selectDate = DateFormat('dd/MMM/yyyy').format(datePicked);
        print(selectDate);
        setState(() {});
      },
      child: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.fromBorderSide(BorderSide(color: defaultColor)),
        ),
        child: DefaultText(
          text: selectDate ==null?'birthday'.tr(context):selectDate.toString(),
          color: secondaryColor,
          size: 16,
        ),
      ),
    );
  }
}

class DefaultListTile extends StatelessWidget {
  final String textTitle;
  final String textSubTitle;
  final dynamic overflowSubTitle;
  final dynamic maxLinesSubTitle;
  final dynamic leading;
  final dynamic trailing;
  final dynamic onTap;

  const DefaultListTile({
    super.key,
    required this.textTitle,
    required this.textSubTitle,
    this.leading,
    this.trailing,
    this.overflowSubTitle,
    this.maxLinesSubTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: secondaryColor),
      ),
      leading: leading,
      title: DefaultText(
        text: textTitle,
        color: Colors.black,
        size: 14,
        fontWeight: FontWeight.bold,
      ),
      subtitle: DefaultText(
        text: textSubTitle,
        color: defaultColor,
        size: 12,
        overflow: overflowSubTitle,
        maxLines: maxLinesSubTitle,
      ),
      trailing: trailing,
    );
  }
}

class DefFlutterRadioGroup extends StatelessWidget {
  final Key radiokey;
  final List<String> titles;
  final String label;
  final Color titleStyle;
  final Function(int?)? onChanged;
  final RGOrientation orientation;
  final dynamic fontWeight;

  const DefFlutterRadioGroup({
    super.key,
    required this.radiokey,
    required this.titles,
    required this.label,
    required this.titleStyle,
    required this.onChanged,
    required this.orientation,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: FlutterRadioGroup(
        key: radiokey,
        titles: titles,
        label: label,
        activeColor: secondaryColor,
        orientation: orientation,
        titleStyle: TextStyle(color: titleStyle),
        labelStyle: TextStyle(
          fontSize: 16,
          color: defaultColor,
          fontWeight: fontWeight,
        ),
        onChanged: onChanged,
      ),
    );
  }
}

class DefContainer extends StatelessWidget {
  final Widget child;

  const DefContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black54.withValues(alpha: .04),
      ),
      child: child,
    );
  }
}
