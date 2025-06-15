import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatefulWidget {
  final TextEditingController controller;
  final double radius;
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

  const CustomTextFormFiled({
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
    this.isPassword = false,
    this.borderColor,
    this.iconColor,
  });

  @override
  _CustomTextFormFiledState createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
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
      controller: widget.controller,
      keyboardType: widget.type,
      onFieldSubmitted: widget.onSubmit,
      onChanged: widget.onChange,
      onTap: widget.onTap,
      validator: widget.validate,
      obscureText: _obscureText,
      cursorColor: widget.borderColor,
      decoration: InputDecoration(
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
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor),
          borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor),
          borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
        ),
      ),
    );
  }
}


class DefaultButton extends StatelessWidget {
  final double width;
  final Color background;
  final String text;
  final double radius;
  final VoidCallback onPress;

  const DefaultButton({
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

class DefaultTextButton extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final dynamic onPressed;
  final dynamic fontWeight;

  const DefaultTextButton({
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

class LogoComponent extends StatelessWidget {
  const LogoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 150,
        width: 350,
        child: Image.asset(
          'assets/images/SMART.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

