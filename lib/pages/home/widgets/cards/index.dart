import 'package:flutter/material.dart';

class HomeCardItem extends StatefulWidget {
  final String backgroundImage;
  final IconData icon;
  final String title;
  final String value;
  HomeCardItem({
    Key key,
    this.backgroundImage: 'card_bg_1',
    this.icon: Icons.ac_unit,
    this.title: "Pontos",
    this.value: "48",
  }) : super(key: key);

  @override
  _HomeCardItemState createState() => _HomeCardItemState();
}

class _HomeCardItemState extends State<HomeCardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            "lib/assets/images/${widget.backgroundImage}.png",
          ),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              widget.title,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 20,
            child: Text(
              widget.value,
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Icon(
              widget.icon,
              color: Colors.white,
              size: 32,
            ),
          )
        ],
      ),
    );
  }
}
