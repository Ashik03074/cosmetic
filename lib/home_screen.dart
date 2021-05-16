import 'package:flutter/material.dart';

const Map<String, Color> myColor = {
  "primary": Color.fromRGBO(226, 115, 138, 1),
  "white": Colors.white,
  "secondary": Color.fromRGBO(247, 225, 227, 1),
};

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppbar(),
      backgroundColor: myColor["primary"],
      body: _Body(),
    );
  }
}

Widget _myAppbar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(70),
    child: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: IconButton(
          icon: Icon(
            Icons.menu,
            color: myColor["primary"],
            size: 30,
          ),
          onPressed: () => print("menu pressed"),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            top: 15,
            right: 15,
          ),
          child: IconButton(
              icon: Icon(
                Icons.search,
                color: myColor["primary"],
                size: 30,
              ),
              onPressed: () => print("searched")),
        )
      ],
    ),
  );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 7,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: myColor["white"],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    bottom: 10,
                  ),
                  child: Text(
                    "Cosmetics that Everyone Loves!",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
                Expanded(
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  height: constraints.maxHeight * .8,
                                  image:
                                      AssetImage('assets/images/makeup1.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: IconButton(
                                    onPressed: () => print("loved"),
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: myColor["primary"],
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "\$15.00",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 20),
                                InkWell(
                                  onTap: () => print("added"),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: myColor["secondary"],
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(7),
                                            topRight: Radius.circular(7),
                                            bottomLeft: Radius.circular(7),
                                            bottomRight: Radius.circular(15))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Icon(
                                        Icons.add,
                                        color: myColor["primary"],
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(),
        ),
      ],
    );
  }
}
