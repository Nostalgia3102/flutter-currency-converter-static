import 'package:flutter/material.dart';

class CurrencyConverterMaterialPagee extends StatefulWidget {
  const CurrencyConverterMaterialPagee({super.key});

  @override
  State<CurrencyConverterMaterialPagee> createState() => _CurrencyConverterMaterialPageeState();
}
//initState() -> understand usage :
class _CurrencyConverterMaterialPageeState extends State<CurrencyConverterMaterialPagee> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text)*81;
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    TextEditingController textEditingController = TextEditingController();
    final border = OutlineInputBorder(
      // Color(0xAARRGGBB)
        borderSide: const BorderSide(
            width: 2.0,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside),
        borderRadius: BorderRadius.circular(40));

    return Scaffold(
      backgroundColor: const Color.fromRGBO(112, 128, 144, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(112, 128, 144, 1),
        elevation: 1,
        title: const Text("Currency Converter"),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        centerTitle: true,
        actions: const [Text("Option1- list")],
        leading: const Text("1 widget on L side"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: Colors.black,
              height: 70,
              width: 250,
              alignment: Alignment.center,
              child: Text("INR ${result!=0? result.toStringAsFixed(2): result.toStringAsFixed(0)}",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)
                ),)
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextField(
                  controller: textEditingController,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),

                  style: const TextStyle(
                    color: Colors.white,
                  ),

                  decoration: InputDecoration(
                    hintText: "Please enter the amount in USD",
                    hintStyle: const TextStyle(
                      color: Colors.white60,
                    ),

                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.white,
                    filled: true,
                    fillColor: Colors.amber,
                    focusedBorder: border,
                    enabledBorder: border,
                  )
              ),
            ),
            // raised button :
            //text button :
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = double.parse(textEditingController.text)* 81;
                });
                //debug, release, profile
                // if(kDebugMode){
                //   print("Button clicked");
                // }
              },
                  style:const ButtonStyle(
                    // to replace all these "MaterialStatePropertyAll" use : TextButton.styleFrom('idhar saara code pase kr do - it will call material state property by default')
                      elevation: MaterialStatePropertyAll(15),
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50))
                  ),
                  child: const Text("Convert Value")),
            )
          ],
        ),
      ),
    );
  }
}

// folowing code is not being used in the project :
class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage ({super.key});
  @override
  //BuildContext -> tells us the location of the current page for making the widget tree.
 Widget build(BuildContext){
    return const Text("data");
  }
}