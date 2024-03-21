import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
      result = double.parse(textEditingController.text)*81;
      setState(() {});
  }

  @override
  Widget build(BuildContext context) {
      return CupertinoPageScaffold(
        backgroundColor: const Color.fromRGBO(112, 128, 144, 1),
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: Color.fromRGBO(112, 128, 144, 1),
          middle: Text("Currency Converter"),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                color: CupertinoColors.black,
                height: 70,
                width: 250,
                alignment: Alignment.center,
                child: Text(
                  "INR ${result != 0 ? result.toStringAsFixed(2) : result
                      .toStringAsFixed(0)}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)
                  ),)
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CupertinoTextField(
                    controller: textEditingController,
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    style: const TextStyle(
                      color: CupertinoColors.white,
                    ),
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      border:Border.all(),
                      borderRadius: BorderRadius.circular(5)
                    ),
                      placeholder: "Please enter the amount in USD",
                      prefix: Icon(CupertinoIcons.money_dollar),
                    )
                ),
              // raised button :
              //text button :
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoButton(
                    onPressed: convert,
                    child: const Text("Convert Value")),
              )
            ],
          ),
        ),
      );
    }
  }
