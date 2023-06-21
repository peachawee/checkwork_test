import 'package:checkwork_test/models/models.dart';
import 'package:flutter/material.dart';

class ListWorkPage extends StatefulWidget {
  const ListWorkPage({Key? key}) : super(key: key);

  @override
  State<ListWorkPage> createState() => _ListWorkPageState();
}

var model = Models();
var work = Models().works;

class _ListWorkPageState extends State<ListWorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backGworklist.jpg"),
                fit: BoxFit.fitHeight,
              )),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(width: 30.0),
                    Image.asset(
                      'assets/images/note.png',
                      height: 80.0,
                    ),
                    SizedBox(width: 25.0),
                    Expanded(
                      child: Text(
                        "Monday. .",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow[800],
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Image.asset("assets/images/note.png"),
                      iconSize: 50.0,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: work.length,
                    itemBuilder: (context, i) {
                      var value = work;
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/note.png",
                                        width: 60.0,
                                        height: 60.0,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${work[i].name}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '${work[i].house}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
