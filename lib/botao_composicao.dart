import 'package:flutter/material.dart';

class BotaoComposicao extends StatelessWidget {
  final VoidCallback? metodo;
  final IconData? icone;
  final Color? cor;

  const BotaoComposicao({
    this.metodo,
    this.icone,
    this.cor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icone,
        color: Colors.white,
      ),
      onPressed: metodo,
      elevation: 6,
      fillColor: cor,
      constraints: (const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      )),
      shape: const CircleBorder(),
    );
  }
}
