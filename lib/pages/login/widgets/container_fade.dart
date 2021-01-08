import 'package:flutter/material.dart';
import 'package:tecmetra_tablet/extensions/hex.dart';

class ContainerFade extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final double borderRadius;
  const ContainerFade({
    Key key,
    this.child,
    this.width: double.infinity,
    this.borderRadius: 30,
    this.height: 275,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.red,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            HexColor.fromHex('#7D51CD'),
            HexColor.fromHex('#1AC9F4'),
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(borderRadius),
        ),
      ),
      child: child,
    );
  }
}
