import 'package:flutter/material.dart';

class Home_scrren extends StatefulWidget {
  const Home_scrren({Key? key}) : super(key: key);

  @override
  State<Home_scrren> createState() => _Home_scrrenState();
}

class _Home_scrrenState extends State<Home_scrren> {
  bool per1 = false;
  bool per2 = false;
  bool per3 = false;
  bool per4 = false;
  bool per5 = false;
  dynamic per = "";
  String amount = "";
  double final_amount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //Original price
          SizedBox(
            height: 50,
          ),
          Container(
            height: 40,
            width: double.infinity,
            color: Color(0xffEEEEEE),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "ORIGINAL PRICE",
                  style: TextStyle(fontSize: 18, color: Color(0xff252427)),
                ),
                Text(
                  "$amount",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff252427),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //Gst
          SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            width: double.infinity,
            color: Color(0xffEEEEEE),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "GST",
                      style: TextStyle(fontSize: 25, color: Color(0xff252427)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            per1 = true;
                            per2 = false;
                            per3 = false;
                            per4 = false;
                            per5 = false;
                            per = 0.03;

                            final_amount = (double.parse(amount) * 0.03) +
                                double.parse(amount);
                          });
                        },
                        child: Per(3, per1)),
                    InkWell(
                        onTap: () {
                          setState(() {
                            per1 = false;
                            per2 = true;
                            per3 = false;
                            per4 = false;
                            per5 = false;
                            per = 0.05;

                            final_amount = (double.parse(amount) * 0.05) +
                                double.parse(amount);
                          });
                        },
                        child: Per(5, per2)),
                    InkWell(
                        onTap: () {
                          setState(() {
                            per1 = false;
                            per2 = false;
                            per3 = true;
                            per4 = false;
                            per5 = false;
                            per = 0.12;

                            final_amount = (double.parse(amount) * 0.12) +
                                double.parse(amount);
                          });
                        },
                        child: Per(12, per3)),
                    InkWell(
                        onTap: () {
                          setState(() {
                            per1 = false;
                            per2 = false;
                            per3 = false;
                            per4 = true;
                            per5 = false;
                            per = 0.18;

                            final_amount = (double.parse(amount) * 0.18) +
                                double.parse(amount);
                          });
                        },
                        child: Per(18, per4)),
                    InkWell(
                        onTap: () {
                          setState(() {
                            per1 = false;
                            per2 = false;
                            per3 = false;
                            per4 = false;
                            per5 = true;
                            per = 0.28;

                            final_amount = (double.parse(amount) * 0.28) +
                                double.parse(amount);
                          });
                        },
                        child: Per(28, per5)),
                  ],
                ),
              ],
            ),
          ),
          //Final price
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: double.infinity,
            color: Color(0xffEEEEEE),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "FINAL PRICE",
                  style: TextStyle(fontSize: 18, color: Color(0xff252427)),
                ),
                Text(
                  "$final_amount",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff252427),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //CGST
          SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            width: 300,
            decoration: BoxDecoration(
              color: Color(0xffEEEEEE),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "CGST/SGST",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff252427),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "25",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          //Text
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 475,
                  width: 400,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //7 8 9
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  amount = amount + '7';
                                });
                              },
                              child: Number('7')),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  amount = amount + '8';
                                });
                              },
                              child: Number('8')),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  amount = amount + '9';
                                });
                              },
                              child: Number('9')),
                        ],
                      ),
                      //4 5 6
                      //SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  amount = amount + '4';
                                });
                              },
                              child: Number('4')),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  amount = amount + '5';
                                });
                              },
                              child: Number('5')),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  amount = amount + '6';
                                });
                              },
                              child: Number('6')),
                        ],
                      ),
                      //1 2 3
                      //SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  amount = amount + '1';
                                });
                              },
                              child: Number('1')),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  amount = amount + '2';
                                });
                              },
                              child: Number('2')),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  amount = amount + '3';
                                });
                              },
                              child: Number('3')),
                        ],
                      ),
                      //00 0 .
                      //SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  amount = amount + '00';
                                });
                              },
                              child: Number('00')),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  amount = amount + '0';
                                });
                              },
                              child: Number('0')),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  amount = amount + '.';
                                });
                              },
                              child: Number('.')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //AC
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xffFF6B00),
                        borderRadius: BorderRadius.circular(100)),
                    alignment: Alignment.center,
                    child: Text(
                      "AC",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(onTap: () {
                    setState(() {
                      amount = amount.substring(0,amount.length);
                    });
                  },
                    child: Container(
                        height: 180,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Color(0xffFF6B00),
                            borderRadius: BorderRadius.circular(100)),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.backspace,
                          size: 25,
                          color: Colors.white,
                        )),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget Number(String num) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.white,
      child: Text(
        "$num",
        style: TextStyle(
            fontSize: 25,
            color: Color(0xff252427),
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget Per(int num, bool click) {
    return Container(
      height: 30,
      width: 50,
      child: Center(
        child: Text(
          "$num",
          style: TextStyle(
              fontSize: 20,
              color: Color(0xff252427),
              fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: click ? Color(0xffFF6B00) : Color(0xffEEEEEE),
      ),
    );
  }
}
