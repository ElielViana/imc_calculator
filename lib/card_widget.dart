import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final double? heigth, top, bottom, left, rigth;
  final String? texto;
  final IconData? icon;
  final Color cor;
  final VoidCallback? onPress;

  const CardWidget({
    this.icon,
    this.onPress,
    this.texto,
    this.heigth,
    this.top,
    this.bottom,
    this.left,
    this.rigth,
    required this.cor,
    Key? key,
  }) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        height: widget.heigth,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(
          top: widget.top ?? 0,
          left: widget.left ?? 0,
          right: widget.rigth ?? 0,
        ),
        decoration: BoxDecoration(
          color: widget.cor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 60,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.texto ?? '',
              style: const TextStyle(
                fontSize: 23,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
