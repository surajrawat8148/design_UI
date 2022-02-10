import 'package:flutter/material.dart';

class Contributors extends StatefulWidget {
  const Contributors({Key? key}) : super(key: key);

  @override
  State<Contributors> createState() => _ContributorsState();
}

class _ContributorsState extends State<Contributors> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Top Contributors',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 350,
            child: ListView(
              padding: const EdgeInsets.only(left: 25.0, top: 20),
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 13),
                MyTabs('assests/office.jpg'),
                const SizedBox(width: 13),
                MyTabs('assests/office.jpg'),
                const SizedBox(width: 13),
                MyTabs('assests/office.jpg'),
                const SizedBox(width: 13),
              ],
            ),
          )
        ],
      ),
    );
  }
}

MyTabs(String imgPath) {
  return Stack(children: [
    Container(
      height: 325.0,
      width: 225.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.fill,
          )),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 12),
          child: Container(
            height: 100.0,
            width: 200.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Recipe',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'Username here',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'Short decription',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Total Recipes',
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Text(
                              'Joined - 6th Feb 2022',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    )
  ]);
}
