import 'package:flutter/material.dart';
import 'package:onebasic/CustomWidget/button.dart';
import 'package:onebasic/CustomWidget/logic.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Basic Calculator',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        home: MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            'Basic Calculator',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.black,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.only(left: 25),
                // color: Colors.grey.shade900,
                child: Text(
                  input!,
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 25),
                height: 100,
                // color: Colors.grey.shade900,
                child: Text(
                  result.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RoundedButton(
                    bgColor: Colors.grey.shade900,
                    btnName: Text(
                      'AM',
                      style: TextStyle(fontSize: 40),
                    ),
                    radius: 40.0,
                  ),
                  InkWell(
                    onTap: () => setState(() => ac()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        'AC',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => bs()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Icon(
                        Icons.backspace_outlined,
                        color: Colors.white,
                        size: 39,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => per()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '%',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => setState(() => seven()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '7',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => eight()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '8',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => nine()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '9',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => div()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '/',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => setState(() => four()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '4',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => five()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '5',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => six()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '6',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => mul()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        'x',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => setState(() => one()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => two()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '2',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => three()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => sub()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '-',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => setState(() => zero()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => dot()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '.',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => equal()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '=',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() => add()),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade900,
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
