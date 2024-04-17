import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 0;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Strength: "),
            for (int i = 0; i < strength; i++)
              Image.asset(
                "assets/images/coffee_bean.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            FilledButton(
              onPressed: increaseStrength,
              style: FilledButton.styleFrom(
                  backgroundColor: Colors.brown, foregroundColor: Colors.white),
              child: const Text("+"),
            ),
          ],
        ),
        Row(
          children: [
            const Text("Sugar: "),
            if (sugars == 0) const Text("No sugars..."),
            for (int j = 0; j < sugars; j++)
              Image.asset(
                "assets/images/sugar_cube.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            FilledButton(
                style: FilledButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white),
                onPressed: increaseSugars,
                child: const Text("+"))
          ],
        ),
      ],
    );
  }
}
