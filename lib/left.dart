import 'package:flutter/material.dart';

class Left extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: <Widget>[
          Expanded(flex: 1, child: appBar()),
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/9.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Young and beautiful",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Poppins-Medium",
                        color: Color(0xFF444444)),
                  ),
                  Text(
                    "Lana del rey",
                    style: TextStyle(
                        color: Color(0xFF999999), fontFamily: "Poppins-Light"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "0:22",
                          style: TextStyle(color: Color(0xFF999999)),
                        ),
                        Text("4:20", style: TextStyle(color: Color(0xFF999999)))
                      ],
                    ),
                  ),
                  Slider(
                      activeColor: Colors.redAccent,
                      min: 0.0,
                      max: 1.0,
                      value: 0.4,
                      onChanged: (value) {}),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                        child: Icon(
                          Icons.skip_previous,
                          color: Color(0xFF333333),
                        ),
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.redAccent,
                        ),
                        child: Icon(
                          Icons.pause,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                        child: Icon(
                          Icons.skip_next,
                          color: Color(0xFF333333),
                        ),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget appBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Text(
            "MUSIC",
            style: TextStyle(
                color: Color(0xFF333333),
                fontFamily: "Poppins-Bold",
                fontSize: 20),
          ),
          Text(
            ".",
            style: TextStyle(
                color: Colors.redAccent,
                fontFamily: "Poppins-Bold",
                fontSize: 20),
          )
        ],
      ),
    );
  }
}
