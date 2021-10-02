import 'package:flutter/material.dart';
import 'package:jobber/exports.dart';

class CommonIconButton extends StatelessWidget {
  final icon;
  final Color color;
  final Color btnColor;
  final Function onTap;

  CommonIconButton({this.icon, this.color, this.btnColor, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.0,
      height: 45.0,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: btnColor == null ? Colors.white : btnColor,
      ),
      child: icon is Widget
          ? icon
          : Icon(
        icon,
        color: color == null ? Colors.white : color,
      ),
    ).ripple(onTap: onTap == null ? null : onTap);
  }
}
