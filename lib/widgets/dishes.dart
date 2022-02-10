import 'package:flutter/material.dart';

class DishTile extends StatelessWidget {
  const DishTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        dish('assests/Aamras.jpg', 'Aamras', 'Indian', '273 Calories',
            '15 mins'),
        const SizedBox(
          height: 12,
        ),
        dish('assests/Tiramisu.jpg', 'Tiramisu', 'Italian', '353 Calories',
            '30 mins'),
        const SizedBox(
          height: 12,
        ),
        dish('assests/Dosa.jpg', 'Dosa', 'South Indian', '133 Calories',
            '30 mins'),
        const SizedBox(
          height: 12,
        ),
        dish('assests/pizza.jpeg', 'Cheese Burst Pizza', 'Italian',
            '1013 Calories', '30 mins'),
      ],
    );
  }
}

dish(String imgPath, String name, String place, String calories, String time) {
  return Padding(
    padding: const EdgeInsets.only(left: 13, right: 13),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CircleAvatar(
        backgroundImage: AssetImage(imgPath),
        radius: 30,
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        Text(
          place,
          style: const TextStyle(color: Colors.grey),
        ),
        Row(
          children: [
            Icon(
              Icons.wb_sunny,
              color: Colors.black.withOpacity(0.4),
              size: 15,
            ),
            Text(
              calories,
              style: const TextStyle(fontSize: 13),
            ),
            Icon(
              Icons.alarm,
              color: Colors.black.withOpacity(0.4),
              size: 15,
            ),
            Text(
              time,
              style: const TextStyle(fontSize: 13),
            ),
          ],
        ),
      ]),
      OutlineButton(
        onPressed: () {},
        child: const Text('Cook', style: TextStyle(color: Colors.black)),
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(50)),
      )
    ]),
  );
}
