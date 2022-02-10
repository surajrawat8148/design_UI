import 'package:flutter/material.dart';
import 'dishes.dart';

class Nokia extends StatefulWidget {
  const Nokia({Key? key}) : super(key: key);

  @override
  State<Nokia> createState() => _NokiaState();
}

class _NokiaState extends State<Nokia> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      height: 400.0,
      width: 360.0,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 50),
              child: Text(
                'Recipes Curated for your Breakfat',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 4),
              child: Text(
                'Are you hungry? We thought so, Browse through this recipes',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9E9E9E)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 90.0),
              child: Text(
                'curated, just for you to feed your hunger',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF9E9E9E)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: const [DishTile()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
