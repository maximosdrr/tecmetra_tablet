import 'package:flutter/material.dart';
import 'package:tecmetra_tablet/extensions/hex.dart';

class AppButton extends StatefulWidget {
  final double height;
  final double padding;
  final double borderRadius;
  final double fontSize;
  final String text;
  final double width;
  final Function onPressed;
  final bool bold;
  AppButton({
    Key key,
    this.bold: false,
    this.height: 45.0,
    this.padding: 0.0,
    this.borderRadius: 10,
    this.fontSize: 16,
    this.width: 300,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  _AppButtonState createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 25),
      height: widget.height,
      child: RaisedButton(
        onPressed: widget.onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        padding: EdgeInsets.all(widget.padding),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                HexColor.fromHex('#1AC9F4'),
                HexColor.fromHex('#7D51CD'),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(
              widget.borderRadius,
            ),
          ),
          child: Container(
            width: widget.width,
            // constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: widget.fontSize,
                fontWeight: widget.bold ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
