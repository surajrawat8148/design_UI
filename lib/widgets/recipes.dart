import 'package:flutter/material.dart';

class Recipes extends StatelessWidget {
  const Recipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 5.0)),
            ],
            borderRadius: BorderRadius.circular(40.0),
            color: Colors.white,
          ),
          height: 250.0,
          width: 360.0,
          child: SizedBox(
              width: MediaQuery.of(context).size.width, child: Latest()),
        )
      ],
    );
  }
}

Latest() {
  return Column(
    children: [
      Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 60, top: 30, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('assests/Tiramisu.jpg'),
              radius: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assests/dumplings.jpeg'),
              radius: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assests/noodles.jpeg'),
              radius: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assests/pizza.jpeg'),
              radius: 30,
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 60, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('assests/Aamras.jpg'),
              radius: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assests/cutlets.jpg'),
              radius: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assests/Pasta.jpg'),
              radius: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assests/Dosa.jpg'),
              radius: 30,
            ),
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30.0),
            child: Column(
              children: const [
                Text(
                  'Latest Recipes',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "Let's go reading lane",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      )
    ],
  );
}
