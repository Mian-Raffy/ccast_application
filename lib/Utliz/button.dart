import 'package:ccast/Utliz/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final bool? border; // User can decide if there is a border
  final BorderRadius? bradius;
  final double? elevation; // Control shadow depth
  final Color? shadowColor; // Control shadow color
  final Color? borderColor; // Customizable border color

  CustomButton({
    super.key,
    this.child,
    this.onPressed,
    this.color,
    this.width,
    this.height,
    this.border = false, // Default is no border
    this.borderColor = Colors.white, // Default border color
    this.bradius,
    this.elevation = 10, // Default shadow depth
    this.shadowColor = Colors.black38,
    bool? hasShadow, // Default shadow color
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 45,
      width: width ?? 248,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: WidgetStateProperty.all(EdgeInsets.zero),
          elevation: WidgetStateProperty.all(elevation),
          shadowColor: WidgetStateProperty.all(shadowColor),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: bradius ?? BorderRadius.circular(50),
              side: border == true
                  ? BorderSide(color: borderColor!) // Custom border color
                  : BorderSide.none, // No border if `border` is false
            ),
          ),
          backgroundColor:
              WidgetStateProperty.all(color ?? AppColor.background),
        ),
        child: child ??
            const Text(
              'Button',
              style: TextStyle(color: Colors.white),
            ),
      ),
    );
  }
}
