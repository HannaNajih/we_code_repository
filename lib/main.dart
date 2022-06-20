import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _imgpurpletulib = 'Assets/purple_tulib.jpg';
  String _imgwhitetulib = 'Assets/white_tulib.jpg';
  String _imgpinktulib = 'Assets/pink_tulib.jpg';
  String _setImage = 'assets/kurd_flag.jpg';
  Widget changeImage(String image) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Image.asset(
        'Assets/$image.png',
        height: 110,
        width: 110,
      ),
      onTap: () {
        setState(() {
          _setImage = image;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: const Text('Image Button SlideShow'),
                backgroundColor: Color.fromARGB(255, 127, 111, 170)),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 50, width: 50),
                Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 179, 107, 192),
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Image.asset('$_setImage')),
                SizedBox(
                  height: 50,
                  width: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(height: 10, width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _setImage == _imgpinktulib;
                        });
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: (() {
                            setState(() {
                              Image.asset(
                                _imgpinktulib,
                                height: 150,
                                width: 150,
                              );
                            });
                          }),
                          child: Image.asset(
                            _imgpinktulib,
                            height: 150,
                            width: 150,
                            // color: Color.fromARGB(255, 209, 64, 112),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 145, 140, 160),
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10, width: 10),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _setImage == _imgwhitetulib;
                            Image.asset(_imgpurpletulib);
                          });
                        },
                        child: ElevatedButton(
                          onPressed: (() {
                            setState(() {
                              Image.asset(
                                _imgwhitetulib,
                                height: 150,
                                width: 150,
                              );
                            });
                          }),
                          child: Image.asset(
                            _imgwhitetulib,
                            height: 150,
                            width: 150,
                            // color: Color.fromARGB(255, 209, 64, 112),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 145, 140, 160),
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10, width: 10),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _setImage == _imgpurpletulib;
                          });
                        },
                        child: ElevatedButton(
                          onPressed: (() {
                            setState(() {
                              Image.asset(
                                _imgpurpletulib,
                                height: 150,
                                width: 150,
                              );
                            });
                          }),
                          child: Image.asset(
                            _imgpurpletulib,
                            height: 150,
                            width: 150,
                            // color: Color.fromARGB(255, 209, 64, 112),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 145, 140, 160),
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10, width: 10),
                  ],
                )
              ],
            )));
  }
}
