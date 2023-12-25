import 'package:flutter/material.dart';

void main() {
  runApp(const AppKu());
}


class AppKu extends StatelessWidget{
  const AppKu({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Latihan 14',
      theme: ThemeData(
        // -----------------
        // dapat mengubah font family pada satu per satu widget Text, kita dapat membuat font yang kita daftarkan menjadi default. Caranya dengan menambahkan parameter fontFamily pada kelas ThemeData yang ada pada parameter theme di MaterialApp
          fontFamily: 'Oswald',
          // -----------------
          primarySwatch: Colors.blue
      ),
      home:
      // const Rainbow(),
      const ExpandedFlexiblePage(),
    );
  }
}

// Expanded

// class Rainbow extends StatelessWidget{
//   const Rainbow({Key? key}): super(key: key);
//
//   @override
//   Widget build(BuildContext context){
//     // Expanded
//     /*
//     Flutter memiliki widget Expanded yang dapat mengembangkan child dari Row atau Column sesuai dengan ruang yang tersedia. Cara menggunakannya Anda cukup membungkus masing-masing child ke dalam Expanded.
//      */
//
//     return Column(
//       children: <Widget>[
//         Expanded(
//           child: Container(
//             color: Colors.red,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.orange,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.yellow
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.green,
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: Container(
//             color: Colors.blue,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.indigo
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.purple,
//           ),
//         )
//       ]
//     );
//     /*
//     Bisa kita lihat seluruh container menempati ruang dengan ukuran yang sama. Ini disebabkan Expanded memiliki parameter flex yang memiliki nilai default 1. Anda dapat mengubah nilai flex ini sesuai perbandingan yang diinginkan. Misalnya Anda memberikan nilai flex 2 pada salah satu container.
//      */
//   }
// }
//---------------------
// Flexible
class ExpandedFlexiblePage extends StatelessWidget{
  const ExpandedFlexiblePage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // Sama seperti Expanded, widget Flexible digunakan untuk mengatur ukuran widget di dalam Row atau Column secara fleksibel. Perbedaan Flexible dan Expanded adalah widget Flexible memungkinkan child widget-nya berukuran lebih kecil dibandingkan ukuran ruang yang tersisa.
      // Sementara, child widget dari Expanded harus menempati ruang yang tersisa dari Column atau Row.

      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const[ExpandedWidget(), FlexibleWidget()]
            ),
            Row(
              children: const[ExpandedWidget(), ExpandedWidget()]
            ),
            Row(
              children: const[FlexibleWidget(), FlexibleWidget()],
            ),
            Row(
              children: const[FlexibleWidget(), ExpandedWidget()],
            ),
              ],
            ),
        ),
      );
  }
}

class ExpandedWidget extends StatelessWidget{
  const ExpandedWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Expanded', style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget{
  const FlexibleWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
          border: Border.all(color: Colors.white)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Flexible',style: TextStyle(color: Colors.teal, fontSize: 24)),
        ),
      ),
    );
  }
}