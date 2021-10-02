import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const BorderRadius borderR = BorderRadius.all(
  Radius.circular(5),
);

extension OnPressed on Widget {
  Widget ripple({bR = borderR, onTap}) {
    return Stack(
      children: <Widget>[
        this,
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: FlatButton(
            shape: RoundedRectangleBorder(borderRadius: bR),
            onPressed: () {
              if (onTap != null) {
                onTap();
              }
            },
            child: Container(),
          ),
        )
      ],
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({
    Key key,
    double size = 24,
    Color color,
    @required dynamic iconPath,
    double padding = 15.0,
  })  : _iconPath = iconPath,
        _size = size,
        _color = color,
        _padding = padding,
        super(key: key);

  final dynamic _iconPath;
  final double _size;
  final Color _color;
  final double _padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(_padding ?? 4.0),
      child: _iconPath is String
          ? SvgPicture.asset(
              _iconPath,
              width: _size,
              height: _size,
              color: _color ?? getColor(context),
            )
          : Padding(
            padding: EdgeInsets.symmetric(horizontal: 3),
            child: Center(
                child: Icon(
                  _iconPath,
                  size: _size,
                  color: _color,
                ),
              ),
          ),
    );
  }
}

Color getColor(context) {
  if (Theme.of(context).brightness == Brightness.light) {
    return Colors.black;
  }
  return Colors.white;
}
