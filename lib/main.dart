import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
   
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   late TextEditingController productCostController ;

@override
  void initState() {
    productCostController = TextEditingController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
     
      body: Column(
             
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
             TextField(
                      controller: productCostController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        NumericTextFormatter(),
                        LengthLimitingTextInputFormatter(20),
                      ],
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: new BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          hintText: "Product price",
                        ),
                    ),
        ],
      ),
    );
  }
}
