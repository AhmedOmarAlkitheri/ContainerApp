import 'package:firstexambleflutter/Model/contact.dart';
import 'package:firstexambleflutter/Model/containerListTile.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*   List<Contact> allContact = [];
    allContact.add(Contact(name: "ahmed", major: "IT", phone: "77897654"));
    allContact.add(Contact(name: "JAHED", major: "IS", phone: "774339334"));
    allContact.add(Contact(name: "jumaan", major: "IT", phone: "778885554"));
    allContact.add(Contact(name: "omar", major: "CS", phone: "7765433443"));
*/
    List<Containerlisttile> allContainerlisttile = [];
    allContainerlisttile.add(Containerlisttile(
        title: "iPhone 14",
        subtitle: "Sleek design with advanced camera capabilities ",
        image: "images/download.jpeg",
        price: 1500,
        PriceDiscount: 1200,
        color: [Colors.blue, Colors.grey, Colors.deepPurple]));
    allContainerlisttile.add(Containerlisttile(
        title: "Samsung Galaxy S24",
        subtitle: "Stunning AMOLED display and high battery efficiency",
        image: "images/OIP2.jpeg",
        price: 1200,
        PriceDiscount: 1000,
        color: [
          Colors.black,
          Colors.black38,
          const Color.fromARGB(255, 196, 130, 106)
        ]));
    allContainerlisttile.add(Containerlisttile(
        title: "Huawei P60",
        subtitle: "Innovative camera features and powerful performance",
        image: "images/OIP3.jpeg",
        price: 900,
        PriceDiscount: 850,
        color: [
          const Color.fromARGB(255, 149, 117, 202),
          Colors.red,
          Colors.black54
        ]));
    allContainerlisttile.add(Containerlisttile(
        title: "Xiaomi 13",
        subtitle: "Excellent value for money with great features",
        image: "images/OIP.jpeg",
        price: 850,
        PriceDiscount: 700,
        color: [
          Colors.blue,
          Colors.grey,
          const Color.fromARGB(255, 15, 63, 17)
        ]));
    allContainerlisttile.add(Containerlisttile(
        title: "Google Pixel 7",
        subtitle:
            "Unique photography experience with a smooth operating system",
        image: "images/OIP1.jpeg",
        price: 800,
        PriceDiscount: 600,
        color: [
          Colors.grey,
          Colors.white,
          const Color.fromARGB(255, 167, 152, 17)
        ]));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 35, 9),
        title: const Text(
          "Home Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children:
                allContainerlisttile.map((x) => desgin(context, x)).toList(),
          ),
        ],
      ),
    );
  }

  Column containerWidget(BuildContext context, Contact c) {
    return Column(children: [
      Container(
        //color: Colors.orange,
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.red,
        ),

        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 2 / 3 - 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("${c.name}   >>"), Text(c.major)],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3 - 10,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.call), Icon(Icons.message)],
              ),
            ),
          ],
        ),
      ),
    ]);
  }

  Widget desgin(BuildContext context, Containerlisttile c) {
    return Container(
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 110,
                  height: 120,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(17)),
                    image: DecorationImage(
                      image: AssetImage("${c.image}"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  //Image.network( "https://m.xcite.com/media/catalog/product//i/p/iphone_14_pro_-_deep_purple_1_2.jpg", ),
                ),
                ListTile(
                    leading: Container(
                      width: 100,
                    ),
                    title: Text(
                      "${c.title}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${c.subtitle}"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${c.price}\$",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text(
                              "Color",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${c.PriceDiscount}\$",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  color: c.color[0],
                                  width: 10,
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 2.5,
                                ),
                                Container(
                                  color: c.color[1],
                                  width: 10,
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 2.5,
                                ),
                                Container(
                                  color: c.color[2],
                                  width: 10,
                                  height: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ));
  }
}
