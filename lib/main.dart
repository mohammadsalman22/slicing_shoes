import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_shoes_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Shoes',
                  style: GoogleFonts.poppins(
                    color: const Color(0XFF777070),
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Colors.black.withOpacity(0.25),
                                blurStyle: BlurStyle.outer,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'images/profile.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                children: const [
                  MyShoesCard(
                    icon: 'images/sepatu1.png',
                    title: 'Nike SB Zoom Blazer',
                    subtitle: 'Mid Premium',
                    price: '28,295',
                    background: Color(0XFFD1C6E6),
                  ),
                  MyShoesCard(
                    icon: 'images/sepatu2.png',
                    title: 'Nike Air Zoom Pengasus',
                    subtitle: 'Men’s Rood Running Shoes',
                    price: '29,995',
                    background: Color(0XFFD3F8F1),
                  ),
                  MyShoesCard(
                    icon: 'images/sepatu3.png',
                    title: 'Nike Zoomx Vaportly',
                    subtitle: 'Men’s Rood Racing Shoe',
                    price: '219,695',
                    background: Color(0XFFF6EBE9),
                  ),
                  MyShoesCard(
                    icon: 'images/sepatu4.png',
                    title: 'Nike Air Farce 1 S50',
                    subtitle: 'Older Kids’ Shoe',
                    price: '26,295',
                    background: Color(0XFFE9E9E9),
                  ),
                  MyShoesCard(
                    icon: 'images/sepatu5.png',
                    title: 'Nike Waffie One',
                    subtitle: 'Men’s Shoes',
                    price: '28,295',
                    background: Color(0XFFFDF2B2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
