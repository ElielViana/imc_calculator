import 'package:flutter/material.dart';

class ComponenteAltura extends StatefulWidget {
  final double? heigth, top, bottom, left, rigth;
  final String? texto;

  final Color? cor;
  final VoidCallback? onPress;

  const ComponenteAltura({
    this.onPress,
    this.texto,
    this.heigth,
    this.top,
    this.bottom,
    this.left,
    this.rigth,
    this.cor,
    Key? key,
  }) : super(key: key);

  @override
  State<ComponenteAltura> createState() => _ComponenteAlturaState();
}

class _ComponenteAlturaState extends State<ComponenteAltura> {
  int _value = 6;
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
            const Text(
              'Altura',
              style: TextStyle(
                color: Color.fromARGB(255, 159, 162, 184),
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _value.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                SizedBox(
                  height: 45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'cm',
                        style: TextStyle(
                          color: Color.fromARGB(255, 159, 162, 184),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
              child: Slider(
                  value: _value.toDouble(),
                  min: 1.0,
                  max: 230,
                  activeColor: Colors.white,
                  inactiveColor: const Color(0xFF8D8E98),
                  thumbColor: const Color(0xFFEB1555),
                  onChanged: (double newValue) {
                    setState(() {
                      _value = newValue.round();
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '${newValue.round()} dollars';
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
