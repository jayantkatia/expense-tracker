import 'package:expense_tracker/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CustomOutLineSocialButton extends CustomElevatedButton {
  final String text;
  final VoidCallback? onPressed;
  final String? assetName;
  final Color outlineColor;

  CustomOutLineSocialButton({
    required this.text,
    required this.onPressed,
    this.assetName,
    required this.outlineColor,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              assetName != null
                  ? onPressed == null
                      ? Opacity(opacity: 0.7, child: Image.asset(assetName))
                      : Image.asset(assetName)
                  : Container(
                      height: 0,
                    ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: assetName != null
                    ? Image.asset(assetName)
                    : Container(
                        height: 0,
                      ),
              )
            ],
          ),
          onPressed: onPressed,
          borderRadius: 8.0,
          outlineColor: outlineColor,
          textColor: outlineColor,
        );
}
