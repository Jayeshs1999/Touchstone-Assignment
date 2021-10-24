import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var sliderValue = 0.0;
  Color value = Colors.yellow;
  Color colorValue = Colors.yellow;
  Color redAccent = Colors.redAccent,
      greenAccent = Colors.greenAccent,
      blueAccent = Colors.blueAccent,
      purpleAccent = Colors.purpleAccent,
      pinkAccent = Colors.pinkAccent,
      yellowAccent = Colors.yellowAccent;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.indigo,

      //-------------------------------------------------Navigator bar----------------------------------------
      bottomNavigationBar: Container(
        width: size.height * 0.2,
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 2,
            )
          ],
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Image(
                image: AssetImage("images/bulb.png"),
                height: 50,
                width: 50,
              ),
            ),
            Image(
              image: AssetImage("images/homeN.png"),
              height: 50,
              width: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Image(
                image: AssetImage("images/settingN.png"),
                height: 50,
                width: 50,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: size.height * 0.36,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8,
                      ),
                      child: Row(
                        children: [
                          Row(children: [
                            // Padding(
                            //     padding: const EdgeInsets.only(bottom: 15.0),
                            //     child: IconButton(
                            //         onPressed: () {
                            //           Navigator.pop(context);
                            //         },
                            //         icon: Icon(Icons.arrow_back))),
                            Padding(
                              padding: const EdgeInsets.only(top: 28.0),
                              child: Text("    Bed\n room",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ]),
                          Stack(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 11),
                              child: Image(
                                image: AssetImage(
                                  "images/lightbulb.png",
                                ),
                                height: 140,
                                width: 224,
                                color: value,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Image(
                                image: AssetImage(
                                  "images/Group.png",
                                ),
                                height: 120,
                                width: 224,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 150),
                      child: Text("4 Lights",
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 200),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 120,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image(
                                          image:
                                              AssetImage("images/surface1.png"),
                                          // color: Colors.indigo,
                                        ),
                                        Text(
                                          "  Main Light",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 120,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image(
                                          image: AssetImage("images/desc.png"),
                                          //color: Colors.indigo,
                                        ),
                                        Text(
                                          "  Desc light",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  )),
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 120,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image(
                                          image: AssetImage("images/bed1.png"),
                                          //color: Colors.indigo,
                                        ),
                                        Text(
                                          "  Bed",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  )),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 40, bottom: 25.0),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back,
                                size: 40, color: Colors.white))),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    //  height: size.height,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(37),
                          topRight: Radius.circular(37),
                        )),
                    child: ListView(children: [
                      Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                          ),
                          child: Text("Intensity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20))),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20,
                        ),
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  "images/solution2.png",
                                ),
                                height: 18,
                              ),
                              Slider(
                                  min: 0.0,
                                  max: 1.0,
                                  divisions: 1,
                                  activeColor: Colors.yellow,
                                  value: sliderValue,
                                  onChanged: (newValue) {
                                    setState(() {
                                      sliderValue = newValue;
                                      if (sliderValue == 1.0 &&
                                          value == Colors.indigo) {
                                        value = colorValue;
                                      } else if (sliderValue == 1.0 &&
                                          value == Colors.red) {
                                        value = colorValue;
                                      } else if (sliderValue == 1.0 &&
                                          value == Colors.green) {
                                        value = colorValue;
                                      } else if (sliderValue == 1.0 &&
                                          value == Colors.purple) {
                                        value = colorValue;
                                      } else if (sliderValue == 1.0 &&
                                          value == Colors.yellow) {
                                        value = colorValue;
                                      } else if (sliderValue == 1.0 &&
                                          value == Colors.pink) {
                                        value = colorValue;
                                      } else if (sliderValue == 1.0 &&
                                          value == Colors.blue) {
                                        value = Colors.indigo;
                                      } else if (sliderValue == 0.0 &&
                                          value == Colors.red) {
                                        value = Colors.indigo;
                                      } else if (sliderValue == 0.0 &&
                                          value == Colors.green) {
                                        value = Colors.indigo;
                                      } else if (sliderValue == 0.0 &&
                                          value == Colors.purple) {
                                        value = Colors.indigo;
                                      } else if (sliderValue == 0.0 &&
                                          value == Colors.yellow) {
                                        value = Colors.indigo;
                                      } else if (sliderValue == 0.0 &&
                                          value == Colors.pink) {
                                        value = Colors.indigo;
                                      } else if (sliderValue == 0.0 &&
                                          value == Colors.blue) {
                                        value = Colors.indigo;
                                      }
                                    });
                                  }),
                              Image(
                                  image: AssetImage(
                                    "images/surface1.png",
                                  ),
                                  color: Colors.yellow),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                          ),
                          child: Text("Colors",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20))),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    colorValue = Colors.red;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor:
                                      Colors.redAccent.withOpacity(0.6),
                                  radius: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    colorValue = Colors.green;
                                  });
                                },
                                child: CircleAvatar(
                                    backgroundColor: Colors.greenAccent,
                                    radius: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    colorValue = Colors.blue;
                                  });
                                },
                                child: CircleAvatar(
                                    backgroundColor:
                                        Colors.blueAccent.withOpacity(0.6),
                                    radius: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    colorValue = Colors.purple;
                                  });
                                },
                                child: CircleAvatar(
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    colorValue = Colors.pink;
                                  });
                                },
                                child: CircleAvatar(
                                    backgroundColor:
                                        Colors.pink.withOpacity(0.6),
                                    radius: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    colorValue = Colors.yellow;
                                  });
                                },
                                child: CircleAvatar(
                                    backgroundColor:
                                        Colors.yellow.withOpacity(0.6),
                                    radius: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset("images/plus.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 30),
                          child: Text("Scenes",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.indigo))),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: FittedBox(
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                "images/surface1.png"),
                                            color: Colors.white,
                                            //color: Colors.indigo,
                                          ),
                                          Text(
                                            "  Birthday",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    )),
                                decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.7),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15))),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 40,
                                width: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image(
                                              image: AssetImage(
                                                  "images/surface1.png"),
                                              color: Colors.white
                                              //color: Colors.indigo,
                                              ),
                                          Text(
                                            "     Party",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    )),
                                decoration: BoxDecoration(
                                    color: Colors.purple.withOpacity(0.6),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15))),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20,
                        ),
                        child: FittedBox(
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                "images/surface1.png"),
                                            color: Colors.white,
                                            //color: Colors.indigo,
                                          ),
                                          Text(
                                            "      Relax",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    )),
                                decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.5),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15))),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 40,
                                width: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                "images/surface1.png"),
                                            color: Colors.white,
                                            //color: Colors.indigo,
                                          ),
                                          Text(
                                            "     Fun",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    )),
                                decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(0.6),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15))),
                              ),
                            ],
                          ),
                        ),
                      )
                    ])),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300, top: 260.0),
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15,
                child: Image(image: AssetImage("images/switch.png"))),
          )
        ],
      ),
    );
  }
}
