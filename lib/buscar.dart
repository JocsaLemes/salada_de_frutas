import 'package:flutter/material.dart';

class Buscar extends StatefulWidget {
  const Buscar({super.key});

  @override
  State<Buscar> createState() => _BuscarState();
}

class _BuscarState extends State<Buscar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){}, child: Text("Buscar"),
                ),
                TextButton(onPressed: (){}, child: Text("asdasd"),
                ),
                TextButton(onPressed: (){}, child: Text("klklkl"),
                ),
                TextButton(onPressed: (){}, child: Text("546453645"),
                ),
              ],
            ),
            Container(child: 
            Flexible(
              child: ListView(children: [
                Container(
                width: double.infinity,
                height: 80,
                color: Colors.amber,
              ),
                      
              Container(
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 139, 7, 255),
              ),
              Container(
                width: double.infinity,
                height: 80,
                color: Colors.amber,
              ),
              Container(
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 209, 184, 109),
              ),
              Container(
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 255, 7, 98),
              ),
              Container(
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 37, 222, 136),
              ),
              Container(
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 209, 204, 190),
              ),
              Container(
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 17, 13, 1),
              ),
              Container(
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 7, 255, 230),
              ),
              Container(
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 255, 7, 7),
              ),
              Container(
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 255, 7, 185),
              ),
              Container(
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 94, 7, 255),
              ),
              Container(
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 7, 255, 7),
              ),
              Container(
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 70, 60, 30),
              ),
              ],),
            ),),
            
          ],
        ),
      ),
    );
  }
}
