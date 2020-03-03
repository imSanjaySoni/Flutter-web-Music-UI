import 'package:flutter/material.dart';

class Right extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: navBar(),
                ),
                Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Color(0xFF999999),
                        ),
                        Icon(Icons.more_vert, color: Color(0xFF999999))
                      ],
                    )),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 60.0, vertical: 13.0),
                child: Text(
                  "Popular Artists",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF333333),
                      fontFamily: "Poppins-Bold"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        card("1", "Getting younger", "Elliphant"),
                        card("2", "Getting younger", "Elliphant"),
                        card("3", "Getting younger", "Elliphant"),
                        card("4", "Getting younger", "Elliphant"),
                        card("5", "Getting younger", "Elliphant"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 13.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Popular Songs",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF333333),
                              fontFamily: "Poppins-Bold"),
                        ),
                        card("6", "Getting younger", "Elliphant"),
                        card("2", "Getting younger", "Elliphant"),
                        card("8", "Getting younger", "Elliphant"),
                        card("5", "Getting younger", "Elliphant"),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Best Aulbum",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF333333),
                              fontFamily: "Poppins-Bold"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AspectRatio(
                            aspectRatio: 3 / 1.8,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/0.jpg"),
                                      fit: BoxFit.cover)),
                              child: Center(
                                child: Icon(
                                  Icons.play_circle_outline,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }

  Widget card(String path, String title, String subtitle) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  "assets/images/$path.jpg",
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Color(0xFf555555),
                        fontSize: 14,
                        fontFamily: "Poppins-Medium"),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                        color: Color(0xFf999999),
                        fontSize: 12,
                        fontFamily: "Poppins-Medium"),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Widget navBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          "Live",
          style: TextStyle(
              color: Color(0xFF333333),
              fontFamily: "Poppins-Regular",
              fontSize: 18),
        ),
        Text(
          "Music",
          style: TextStyle(
            color: Color(0xFF999999),
            fontFamily: "Poppins-Regular",
            fontSize: 18,
          ),
        ),
        Text(
          "Event",
          style: TextStyle(
              color: Color(0xFF999999),
              fontFamily: "Poppins-Regular",
              fontSize: 18),
        )
      ],
    );
  }
}
