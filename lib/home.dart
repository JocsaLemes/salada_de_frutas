/*
Body:
  Column
     1- Row Icon
            Text
            Icon
     2- TextField
     3- Row Text
            TextButton
     4- Row Container 1
            Container 2
            Container 3
            Container 4
     5- Text
     6- Contaneir (Image)
     7- Row Text
            TextButton
     8- Row Container 1
            Container 2
            Container 3

 */

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Row(
              children: [
                Icon(
                  Icons.school,
                  size: 30,
                  color: const Color.fromARGB(255, 244, 133, 54),
                ),
                SizedBox(width: 30),
                Text(
                  "Sabor & Art",
                  style: TextStyle(
                    fontSize: 25,
                    color: const Color.fromARGB(255, 244, 133, 54),
                  ),
                ),
                Expanded(child: Container()),
                Icon(Icons.notifications, size: 30),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Buscar receitas ..",
                prefixIcon: Icon(Icons.search, size: 30),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categorias"),
                TextButton(onPressed: () {}, child: Text("Ver todas")),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 7, spreadRadius: -3,offset: Offset(5, 5))],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 186, 137),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.coffee),
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              "Café",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 7, spreadRadius: -3,offset: Offset(5, 5))],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 186, 137),
                    ),
                    child: Center(
                      child: Stack(
                        children: [
                          Center(child: Image.asset("assets/img/img_01_SF.png",scale: 1,)),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5,20,5,10),
                            child: Text("Almoço",style: TextStyle(color: const Color.fromARGB(255, 0, 255, 247)),),
                          )],)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 7, spreadRadius: -3,offset: Offset(5, 5))],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 186, 137),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.coffee),
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              "Jantar",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
               Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 7, spreadRadius: -3,offset: Offset(5, 5))],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 186, 137),
                    
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.coffee),
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              "Jantar",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
               ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 7, spreadRadius: -3,offset: Offset(5, 5))],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 186, 137),
                    
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.coffee),
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              "Jantar",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 7, spreadRadius: -3,offset: Offset(5, 5))],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 186, 137),
                    
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.coffee),
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              "Jantar",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 7, spreadRadius: -3,offset: Offset(5, 5))],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 186, 137),
                    
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.coffee),
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              "Jantar",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 7, spreadRadius: -3,offset: Offset(5, 5))],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 186, 137),
                    
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.coffee),
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              "Jantar",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 7, spreadRadius: -3,offset: Offset(5, 5))],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 186, 137),
                    
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.coffee),
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              "Jantar",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 7, spreadRadius: -3,offset: Offset(5, 5))],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 137, 255, 161),
                    
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.coffee),
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              "Jantar",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 7, spreadRadius: -3,offset: Offset(5, 5))],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 186, 137),
                    
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.coffee),
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              "Jantar",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),],
            ),
          ),
          Text("Receitas em destaque"),
          Container(child: Image.asset("")),
          Row(
            children: [
              Text("Mais populares"),
              TextButton(onPressed: () {}, child: Text("Ver todas")),
            ],
          ),
          Row(
            children: [
              Container(child: Image.asset("")),
              Container(child: Image.asset("")),
              Container(child: Image.asset("")),
            ],
          ),
        ],
      ),
    );
  }
}
