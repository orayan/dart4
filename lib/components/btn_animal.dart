import 'package:flutter/material.dart';

class BtnAnimal extends StatelessWidget {
  const BtnAnimal(
      {Key? key,
      required this.name,
      required this.icon,
      required this.onClick,
      this.color = Colors.indigo})
      : super(key: key);

  final String name;
  final String icon;
  final Color color;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: onClick,
              label: Text(name),
              style: ElevatedButton.styleFrom(
                  primary: color,
                  onPrimary: Colors.white,
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  elevation: 5,
                  padding: const EdgeInsets.only(left: 2),
                  alignment: Alignment.centerLeft),
              icon: Image(
                image: AssetImage(icon),
                width: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          )
        ],
      ),
    );
  }
}
