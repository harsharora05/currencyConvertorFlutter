import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  double result = 0;
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // border ka varible bna dia kyuki kaafi jagh use kar rhe isko
    final border = OutlineInputBorder(
        borderSide: const BorderSide(width: 2.0),
        borderRadius: BorderRadius.circular(2));

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text("Currency Convertor"),
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toStringAsFixed(4),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    hintText: "Please Enter A Currency in USD",
                    hintStyle: const TextStyle(color: Colors.blueAccent),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black38,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      result = int.parse(textEditingController.text) * 83.29;
                    });
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white70,
                    backgroundColor: Colors.black87,
                    minimumSize: const Size(double.infinity, 20),
                  ),
                  child: const Text(
                    "Convert",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});
//  @override
//   Widget build(BuildContext context) {
//     // border ka varible bna dia kyuki kaafi jagh use kar rhe isko
//     final border = OutlineInputBorder(
//         borderSide: const BorderSide(width: 2.0),
//         borderRadius: BorderRadius.circular(2));

//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blueGrey,
//           title: const Text("Currency Convertor"),
//           centerTitle: true,
//         ),
//         backgroundColor: Colors.blueGrey,
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 '0',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: "Please Enter A Currency in USD",
//                     hintStyle: const TextStyle(color: Colors.blueAccent),
//                     prefixIcon: const Icon(Icons.monetization_on_outlined),
//                     prefixIconColor: Colors.black38,
//                     filled: true,
//                     fillColor: Colors.white,
//                     focusedBorder: border,
//                     enabledBorder: border,
//                   ),
//                   keyboardType:
//                       const TextInputType.numberWithOptions(decimal: true),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextButton(
//                   onPressed: () {},
//                   style: TextButton.styleFrom(
//                     foregroundColor: Colors.white70,
//                     backgroundColor: Colors.black87,
//                     minimumSize: const Size(double.infinity, 20),
//                   ),
//                   child: const Text(
//                     "Convert",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
 
// }
