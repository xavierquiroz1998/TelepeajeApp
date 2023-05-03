import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageCars extends StatefulWidget {
  const PageCars({super.key});

  @override
  State<PageCars> createState() => _PageCarsState();
}

class _PageCarsState extends State<PageCars> {
  @override
  Widget build(BuildContext context) {
    var sizeGlobal = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: sizeGlobal.height / 4.5,
            //color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    "VEHÌCULOS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: sizeGlobal.height / 9,
            //color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Text(
                        "3 Vehìculos registrados",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 5, 0),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 20,
                      ),
                    ),
                    Text(
                      "Todo se encuentra en orden",
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade900),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              //color: Colors.amber,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.drive_eta),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                      title: Text("AAR992$index"),
                      subtitle: Text("Carro $index"),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
