import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

          //primarySwatch: Colors.blue,
          ),
      home: const homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 350.0,
                width: double.infinity,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                color: const Color(0xFFFA624F),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ),
              Positioned(
                  top: 125.0,
                  left: 15.0,
                  right: 15.0,
                  child: Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(7.0),
                    child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.white,
                      ),
                    ),
                  )),
              Positioned(
                  top: 75.0,
                  left: (MediaQuery.of(context).size.width / 2) - 50.0,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        image: const DecorationImage(
                          image: AssetImage('assets/profile.jpg'),
                          fit: BoxFit.cover,
                        )),
                  )),
              Positioned(
                top: 190.0,
                left: (MediaQuery.of(context).size.width / 2 - 105.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Alam & Eve',
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 7.0,
                      ),
                      const Text('Hubli',
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 17.0,
                            color: Colors.grey,
                          )),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            color: const Color(0xFFFA624F),
                            onPressed: () {},
                            child: const Text(
                              'Message',
                              style: TextStyle(
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            color: const Color(0xFFFA624F),
                            onPressed: () {},
                            child: const Text(
                              'Book Service',
                              style: TextStyle(
                                  fontFamily: 'Comfortaa',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ]),
              )
            ],
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'Services',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 15.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Column(
            children: <Widget>[
              menuCard('Facial', 'assets/facial.jpg', '250 Rs', 4, 2.8, 1.2),
              const SizedBox(height: 12.0),
              menuCard('Haircut', 'assets/haircut.jpg', '200 Rs', 4, 4.2, 2.8),
              const SizedBox(height: 12.0),
              menuCard(
                  'Manicure', 'assets/manicure.jpg', '200 Rs', 4, 4.2, 2.8),
              const SizedBox(height: 12.0),
              menuCard(
                  'Pedicure', 'assets/pedicure.jpg', '150 Rs', 4, 4.2, 2.8),
              const SizedBox(height: 12.0),
              menuCard('Bridal Makeup', 'assets/bridal_Makeup.jpg', '2000 Rs',
                  4, 4.2, 2.8),
            ],
          ),
        ],
      ),
    );
  }

  Widget menuCard(String title, String imgPath, String type, int rating,
      double views, double likes) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(7.0),
        elevation: 4.0,
        child: Container(
          height: 125.0,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0), color: Colors.white),
          child: Row(
            children: <Widget>[
              const SizedBox(width: 10.0),
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7.0)),
              ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 15.0),
                  Text(
                    title,
                    style: const TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 7.0),
                  Text(
                    type,
                    style: const TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 7.0),
                  Row(
                    children: <Widget>[
                      getStar(rating, 1),
                      getStar(rating, 2),
                      getStar(rating, 3),
                      getStar(rating, 4),
                      getStar(rating, 5)
                    ],
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.remove_red_eye,
                          color: Colors.grey.withOpacity(0.4)),
                      const SizedBox(width: 3.0),
                      Text(views.toString()),
                      const SizedBox(width: 10.0),
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      const SizedBox(width: 3.0),
                      Text(likes.toString())
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getStar(rating, index) {
    if (rating >= index) {
      return const Icon(Icons.star, color: Colors.yellow);
    } else {
      return Icon(Icons.star, color: Colors.grey.withOpacity(0.5));
    }
  }
}
