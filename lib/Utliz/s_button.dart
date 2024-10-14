// import 'package:sixam_mart/util/dimensions.dart';
// import 'package:sixam_mart/util/styles.dart';
// import 'package:flutter/material.dart';

// class CustomButton extends StatelessWidget {
//   final Function? onPressed;
//   final String buttonText;
//   final bool transparent;
//   final EdgeInsets? margin;
//   final double? height;
//   final double? width;
//   final double? fontSize;
//   final double radius;
//   final IconData? icon;
//   final Color? bgColor;
//   final BorderSide? borderSide;
//   final bool isLoading;
//   final bool isColor;
//   final Color? color;
//   final Color? textColor;
//   final bool isUpperCase;
//   CustomButton(
//       {this.onPressed,
//       required this.buttonText,
//       this.transparent = false,
//       this.margin,
//       this.width,
//       this.color,
//       this.height,
//       this.fontSize,
//       this.radius = 5,
//       this.icon,
//       this.bgColor,
//       this.borderSide,
//       this.isLoading = false,
//       this.isColor = false,
//       this.isUpperCase = false,
//       this.textColor});

//   @override
//   Widget build(BuildContext context) {
//     final ButtonStyle _flatButtonStyle = TextButton.styleFrom(
//       disabledForegroundColor: Colors.transparent,
//       foregroundColor: Colors.transparent,
//       backgroundColor: onPressed == null
//           ? Theme.of(context).disabledColor
//           : transparent
//               ? Colors.transparent
//               :
//               // color ??
//               bgColor != null
//                   ? bgColor
//                   : Theme.of(context).primaryColor,
//       minimumSize: Size(width != null ? width! : Dimensions.WEB_MAX_WIDTH, height != null ? height! : 50),
//       padding: EdgeInsets.zero,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius), side: borderSide != null ? borderSide! : BorderSide.none),
//     );

//     return GestureDetector(
//       onTap: onPressed as void Function()?,
//       child: Center(
//         child: SizedBox(
//           width: width != null ? width : Dimensions.WEB_MAX_WIDTH,
//           child: Padding(
//             padding: margin == null ? EdgeInsets.all(0) : margin!,
//             child: TextButton(
//               onPressed: null,
//               style: _flatButtonStyle,
//               child: isLoading
//                   ? SizedBox(width: 24, height: 24, child: CircularProgressIndicator(color: Colors.white))
//                   : Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                       icon != null
//                           ? Padding(
//                               padding: EdgeInsets.only(right: Dimensions.PADDING_SIZE_EXTRA_SMALL),
//                               child: Icon(
//                                 icon,
//                                 color: transparent ? Theme.of(context).primaryColor : Theme.of(context).cardColor,
//                                 size: 20,
//                               ),
//                             )
//                           : SizedBox(),
//                       Text(isUpperCase ? buttonText.toUpperCase() : buttonText,
//                           textAlign: TextAlign.center,
//                           style: outfitRegular.copyWith(
//                             color: isColor
//                                 ? textColor
//                                 : transparent
//                                     ? Theme.of(context).primaryColor
//                                     : Theme.of(context).brightness == Brightness.dark
//                                         ? Colors.white
//                                         : Theme.of(context).cardColor,
//                             fontSize: fontSize != null ? fontSize : Dimensions.fontSizeLarge,
//                           )),
//                     ]),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }