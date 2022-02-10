import 'package:flutter/material.dart';

class Bored extends StatelessWidget {
  const Bored({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Are You Bored?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [
                    Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.orange,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300.0,
            width: 360.0,
            child: Row(
              children: [
                const RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'Food For Thought',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.orange),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40)),
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  height: 300.0,
                  width: 200.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 13, right: 13, top: 8),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "A speciality of Mexico A speciality of MexicoA speciality of MexicoA speciality of Mexico",
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "A speciality of Mexico A speciality of MexicoA speciality of MexicoA speciality of Mexico",
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                            "A speciality of Mexico A speciality of MexicoA speciality of MexicoA speciality of Mexico",
                            style: TextStyle(fontSize: 11, color: Colors.grey)),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                            "A speciality of Mexico A speciality of MexicoA speciality of MexicoA speciality of Mexico",
                            style: TextStyle(fontSize: 11, color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
                Box()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Box() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40), bottomRight: Radius.circular(40)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 5.0)),
      ],
    ),
    height: 300.0,
    width: 60.0,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          RotatedBox(
            quarterTurns: 3,
            child: Icon(
              Icons.arrow_forward,
              color: Colors.orange,
              size: 20,
            ),
          ),
        ],
      ),
    ),
  );
}
