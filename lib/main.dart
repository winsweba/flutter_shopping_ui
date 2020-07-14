import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          elevation: 0,
          title: Text(
            'Shopping',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.notifications_none, color: Colors.black),
                onPressed: null),
            IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.black),
                onPressed: null),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                              child:
                              Text('All', style: TextStyle(fontSize: 17))),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child:
                            Text('Shoes', style: TextStyle(fontSize: 17)),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child: Text('Ball', style: TextStyle(fontSize: 17)),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child: Text('Sneakers',
                                style: TextStyle(fontSize: 17)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Column(children: [
                  Container(
                      height: 200,
                      child:
                      ListView(scrollDirection: Axis.horizontal, children: [
                        productSet(
                            image: 'assets/images/four.jpg', text: 'Adidas'
                        ),
                        productSet(
                            image: 'assets/images/eight.jpg',text: 'Reebok'
                        ),
                        productSet(
                          image: 'assets/images/five.jpg', text:'Adidas',
                        ),
                      ]))
                ]),
                SizedBox(height: 20),
                Column(children: [
                  Container(
                      height: 200,
                      child:
                      ListView(scrollDirection: Axis.horizontal, children: [
                        productSet(
                          image: 'assets/images/seven.jpeg',text:'Adidas',
                        ),
                        productSet(
                          image: 'assets/images/six.jpeg',text:'Nike',
                        ),
                        productSet(
                          image: 'assets/images/four.jpg',text:'Adidas',
                        ),
                      ]))
                ]),
                SizedBox(
                  height: 20,
                ),

                setProduct(
                    tag: 'red',
                    image: 'assets/images/one.jpg',
                    txtName: 'Adidas',
                    price: '50\$'),
                setProduct(
                    tag: 'nike',
                    image: 'assets/images/two.jpg',
                    txtName: 'Nike',
                    price: '90\$'),
                setProduct(
                    tag: 'green',
                    image: 'assets/images/three.jpg',
                    txtName: 'Adidas',
                    price: '40\$'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget setProduct({image, tag, price, txtName}) {
    return Hero(
      tag: tag,
      child: Container(
        height: 250,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 10),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        txtName,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Shoe',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black12,
                  ),
                  child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        size: 20,
                      )),
                )
              ],
            ),
            Text(price, style: TextStyle(color: Colors.black54, fontSize: 30))
          ],
        ),
      ),
    );
  }

  Widget productSet({image, text}) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [
                0.3,
                1.9,
              ],
              colors: [
                Colors.lightBlue.withOpacity(.5),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(text,
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ),
          ),
        ),
      ),
    );
  }

}
