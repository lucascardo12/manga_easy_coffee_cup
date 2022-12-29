import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeButton extends StatelessWidget {
  final String label;
  final void Function()? onPress;
  final Color? corButton;
  final Color? corTexto;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? elevation;

  const CoffeeButton({
    super.key,
    required this.label,
    this.onPress,
    this.corButton,
    this.corTexto,
    this.margin,
    this.padding,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: margin ?? const EdgeInsets.symmetric(horizontal: 25),
            child: TextButton(
              onPressed: onPress,
              style: TextButton.styleFrom(
                elevation: elevation ?? 12,
                backgroundColor: corButton ?? ThemeService.of.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: padding ?? const EdgeInsets.symmetric(vertical: 10),
              ),
              child: CoffeeText(
                text: label,
                typography: CoffeeTypography.body,
                color: corTexto ?? ThemeService.of.primaryText,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
