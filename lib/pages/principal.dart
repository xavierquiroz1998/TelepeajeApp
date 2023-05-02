import 'package:flutter/material.dart';

class PagePrincipal extends StatefulWidget {
  const PagePrincipal({super.key});

  @override
  State<PagePrincipal> createState() => _PagePrincipalState();
}

class _PagePrincipalState extends State<PagePrincipal> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("INICIO");
  }

  @override
  Widget build(BuildContext context) {
    var sizeGlobal = MediaQuery.of(context).size;
    Color? colorCab = Colors.lightBlue.shade900;
    Color? colorText = Colors.white;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: colorCab,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(12, 12),
                  blurRadius: 20,
                )
              ],
            ),

            //width: sizeGlobal.width / 2,
            height: sizeGlobal.height / 3,
            //color: colorCab,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: colorCab,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: sizeGlobal.height / 10,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 0, 0),
                                        child: Text(
                                          "Hola XAVIER",
                                          style: styteText(20, colorText),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: sizeGlobal.height / 10,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 25, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.settings,
                                              color: colorText,
                                            ),
                                            label: Text("")),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: sizeGlobal.height / 10,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 25, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.notification_add,
                                              color: colorText,
                                            ),
                                            label: Text("")),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Text(
                            "SALDO",
                            style: styteText(13, colorText),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Text(
                            "POSPAGO",
                            style: styteText(13, colorText),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Container(
          //   width: sizeGlobal.width / 2,
          //   height: sizeGlobal.height / 2,
          //   color: Colors.white,
          // )
        ],
      ),
    );
  }
}

TextStyle styteText(double size, Color colorText) {
  return TextStyle(
      fontWeight: FontWeight.bold, fontSize: size, color: colorText);
}
