import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> product = [
    {
      'id': 1,
      'name': 'T-shirt',
      'price': '100',
      'img':
          'https://5.imimg.com/data5/ANDROID/Default/2021/7/VD/GM/DZ/44196072/product-jpeg-500x500.jpg'
    },
    {
      'id': 2,
      'name': 'shirt',
      'price': '200',
      'img': 'https://m.media-amazon.com/images/I/71DBklVte9L._SX679_.jpg'
    },
    {
      'id': 3,
      'name': 'Dress',
      'price': '300',
      'img':
          'https://i.etsystatic.com/13531771/r/il/67103a/2447171944/il_794xN.2447171944_olpn.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 2 - 50;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: Text(
          "Flutter Demo",
          style: TextStyle(fontSize: 24, wordSpacing: 3),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: height,
            child: SingleChildScrollView(
              child: Column(
                children: product
                    .map((e) => Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: [
                                    0.1,
                                    1,
                                  ],
                                  colors: [Colors.white, Colors.brown.shade700],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 8,
                                      offset: Offset(1, 6),
                                      spreadRadius: 5)
                                ],
                                border: Border.all(
                                  color: Colors.black38,
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignInside,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0.2, right: 22),
                                      child: Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(Icons.favorite)),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    CircleAvatar(
                                        backgroundImage:
                                            NetworkImage(e['img'].toString()),
                                        radius: 30),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Image.network(
                                      e['img'].toString(),
                                      height: 150,
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(e['name']),
                                        SizedBox(
                                          width: 80,
                                        ),
                                        Text(e['price'].toString()),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(e['name']),
                                        SizedBox(
                                          width: 80,
                                        ),
                                        Text(e['price'].toString()),
                                      ],
                                    ),
                                    SizedBox(height:30),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              height: 40,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.circular(10)),
                                              child: Center(child: Text("Buy now", style:TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),),

                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              height: 40,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10)),
                                              child: Center(child: Text("Add to cart", style:TextStyle(
                                                fontWeight: FontWeight.bold
                                              )),),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )))
                    .toList(),
              ),
            ),
          ),
          Container(
            height: height,
            child: SingleChildScrollView(
              child: Column(
                children: product
                    .map((e) => Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [
                                  0.1,
                                  0.9,
                                ],
                                colors: [
                                  Colors.brown.shade700,
                                  Colors.white,
                                ]
                              ),
                                // color: Colors.brown.shade300,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 8,
                                      offset: Offset(1, 6),
                                      spreadRadius: 5)
                                ],
                                border: Border.all(
                                  color: Colors.black38,
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignInside,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0.2, right: 22),
                                      child: Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(Icons.favorite)),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    CircleAvatar(
                                        backgroundImage:
                                            NetworkImage(e['img'].toString()),
                                        radius: 30),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Image.network(
                                      e['img'].toString(),
                                      height: 150,
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(e['name']),
                                        SizedBox(
                                          width: 80,
                                        ),
                                        Text(e['price'].toString()),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(e['name']),
                                        SizedBox(
                                          width: 80,
                                        ),
                                        Text(e['price'].toString()),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
