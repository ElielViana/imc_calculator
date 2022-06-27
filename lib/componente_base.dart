import 'package:flutter/material.dart';

class ComponenteBase extends StatefulWidget {
  final double? heigth, top, bottom, left, rigth;
  final String? texto, texto2;
  final IconData? icon;
  final Color cor;
  final VoidCallback? onPress;
  final Widget? buttonMinus;
  final Widget? buttonPlus;

  const ComponenteBase({
    this.buttonMinus,
    this.texto2,
    this.buttonPlus,
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
  State<ComponenteBase> createState() => _ComponenteBaseState();
}

class _ComponenteBaseState extends State<ComponenteBase> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.texto ?? '',
              style: const TextStyle(
                color: Color.fromARGB(255, 159, 162, 184),
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.texto2 ?? '',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.buttonMinus!,
                const SizedBox(
                  width: 25,
                ),
                widget.buttonPlus!,
              ],
            )
          ],
        ),
      ),
    );
  }
}
