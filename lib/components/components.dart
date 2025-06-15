import 'package:flutter/material.dart';

class CostumTextFormFeild extends StatelessWidget {
  final TextEditingController controller;
  final double radius;
  final dynamic bordercolor;
  final dynamic iconcolor;

  final TextInputType type;
  final dynamic label;
  final dynamic onSubmit;
  final dynamic onChange;
  final dynamic onTap;
  final dynamic validate;
  final dynamic prefix;
  final dynamic suffix;
  final dynamic suffixPressed;
  final bool isPassword;

  const CostumTextFormFeild({
    super.key,
    required this.radius,
    this.label,
    required this.controller,
    required this.type,
    required this.prefix,
    this.onSubmit,
    this.onChange,
    required this.validate,
    this.onTap,
    this.suffixPressed,
    this.suffix,
    this.isPassword = false,
    this.bordercolor,
    this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      obscureText: isPassword,
      cursorColor: bordercolor,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(onTap: suffixPressed, child: Icon(suffix)),
        prefixIcon: Icon(prefix),
        labelText: label,
        prefixIconColor: iconcolor,
        // border: OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.deepOrange ),
        //   borderRadius: BorderRadius.all(Radius.circular(radius)),
        // ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: bordercolor),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: bordercolor),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
      ),
    );
  }
}

class Defaultbotton extends StatelessWidget {
  final double width;
  final Color background;
  final String text;
  final double radius;
  final VoidCallback onPress;

  const Defaultbotton({
    super.key,
    required this.background,
    this.width = double.infinity,
    required this.text,
    this.radius = 5.0,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        onPressed: onPress,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 18,
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

  const DefaultText({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight),
    );
  }
}

class DefaultTextBotton extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final dynamic onPressed;
  final dynamic fontWeight;

  const DefaultTextBotton({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    required this.onPressed,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
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
