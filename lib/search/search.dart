// Ventana busqueda y resultados frases
// ignore_for_file: file_names

import 'package:flutter/material.dart';
//import 'package:toeflapp/pages/voz.dart';
import 'package:search11/data/model_data.dart';
import 'package:search11/model/model.dart';

class DirectionsDataSearch extends SearchDelegate<DirectionsData> {
  String seleccion2 = '';
  String seleccion3 = '';
  String seleccion4 = '';

  @override
  List<Widget> buildActions(BuildContext context) {
    // Acciones de nuestro APPBAR
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            //ewe = '';
            query =
                ''; // borra lo que esta en la caja de dialogo de la busqueda
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icono a la izquierda del Appbar
    return IconButton(
      onPressed: () {
        //ewe = '';
        close(context, DirectionsData(title: '', definition: '', category: ''));
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Crea los resultados que vamos a mostrar

    //return Center(child: Text(seleccion2, style: TextStyle(fontSize: 20) )); //PROTOTIPO 1 DE RESULTADOS
    /*
      return Scaffold(  // PROTOTIPO 2 DE RESULTADOS
        appBar: AppBar(
          title: Text(seleccion3),
          automaticallyImplyLeading: false,),
              
        body: Container( 
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Container(
            //padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Text(seleccion2,textAlign: TextAlign.justify,style: TextStyle(fontSize: 30.0)),
                ),
        ),
      );
      */

//------------------------------------------------------ PAGINA DE RESULTADOS  PARA MODIFICAR------------------------------------------------------

    return Scaffold(
      // PROTOTIPO 3 DE RESULTADOS
      //body: Center(child: Text(images2[0].toString()),),
      //body: Center(child: Image.asset( images2[0]),)
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading:
                false, // QUITAR ICONO DE RETORNO EN APPBAR
            elevation: 2.0,
            backgroundColor: Colors.indigoAccent,
            expandedHeight: 150.0,
            floating: true,
            pinned: true,
            forceElevated: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsetsDirectional.only(start: 15, bottom: 16),
              centerTitle: true,
              title: Text(
                seleccion3,
                style: const TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              background: Container(
                color: Colors.blue,
              ),
              // background: const FadeInImage(
              //   placeholder: AssetImage('assets/f2.jpg'),
              //   image: AssetImage(
              //       'assets/f1.jpg'), // imagen principal en resultado de busqueda
              //   fadeInDuration: Duration(milliseconds: 1500),
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 10.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: <Widget>[
                  // ClipRRect (
                  //     borderRadius: BorderRadius.circular(20.0),
                  //     child: Image(
                  //       image: AssetImage('assets/1.jpg'),
                  //       height: 150.0,
                  //     ),
                  //   ),
                  //SizedBox(width: 20.0),
                  Flexible(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(width: 20.0, height: 20),
                      const Text('Memorize and Test',
                          style: TextStyle(
                              color: Colors.blueGrey, fontSize: 26.0)),
                      // const SizedBox(width: 20.0, height: 20),
                      // Text(seleccion3,
                      //     style: const TextStyle(
                      //         color: Colors.black, fontSize: 20.0)),
                      const SizedBox(width: 20.0, height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple, minimumSize: const Size(250, 75)),
                        child: const Text("TEST"),
                        onPressed: () {
                         // ewe = '';
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => SpeechScreen()),
                          // );
                        },
                      ),
                      const SizedBox(width: 20.0, height: 20),
                      //Text(seleccion3, style: TextStyle(color: Colors.blueGrey, fontSize: 16.0)),
                      const Text('Result',
                          style: TextStyle(
                              color: Colors.blueGrey, fontSize: 36.0)),
                      Text('''ewe
                            ''',
                          style: const TextStyle(color: Colors.red, fontSize: 15.0)),

                      // Text('Diction: $confidenceGlobal',
                      //     style: const TextStyle(
                      //         color: Colors.blueGrey, fontSize: 16.0)),
                      // _estrellas(confidenceGlobal),
                    ],
                  ))
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Info",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 25),
                    ),
                    const SizedBox(
                      height: 10.0,
                      width: 10.0,
                    ),
                    Text(seleccion4,
                        style:
                            const TextStyle(color: Colors.blueGrey, fontSize: 16.0)),
                    const SizedBox(
                      height: 10.0,
                      width: 10.0,
                    ),
                    Text(seleccion3,
                        style: const TextStyle(
                            color: Colors.blueGrey, fontSize: 16.0)),
                    const SizedBox(
                      height: 10.0,
                      width: 10.0,
                    ),
                    Text(
                      seleccion2,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(fontSize: 15),
                    ),
                    //Container()
                  ],
                )),
          ]))
        ],
      ),
    );
  }

  // _estrellas(double numestrellas) {
  //   double tamestrella = 50;
  //   //Color colorestrella = Colors.yellow;

  //   if (numestrellas <= 100 && numestrellas >= 80) {
  //     return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //       ]);
  //   } else if (numestrellas <= 79.9 && numestrellas >= 60) {
  //     return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //       ]);
  //   } else if (numestrellas <= 59.9 && numestrellas >= 40) {
  //     return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //       ]);
  //   } else if (numestrellas <= 39.9 && numestrellas >= 20) {
  //     return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //       ]);
  //   } else {
  //     return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
  //         Icon(
  //     Icons.star_outline_outlined,
  //     color: Colors.yellow,
  //     size: tamestrella,
  //         ),
  //       ]);
  //   }
  // }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Sugerencias que aparecen cuando se escribe

    //final nuevaSugerida = query.isEmpty? loadDirectionsData() : loadDirectionsData().where((p) => p.title.startsWith(query)).toList() ;
    //final listaSugerida = (query.isEmpty) ? datos33 : animales.where((data) => data.toLowerCase().startsWith(query.toLowerCase())).toList();
    final nuevaSugerida = query.isEmpty
        ? loadDirectionsData()
        : loadDirectionsData()
            .where((p) => p.title.toLowerCase().startsWith(query.toLowerCase()))
            .toList();

    return nuevaSugerida.isEmpty
        ? const Text(
            'No Results Found...',
            style: TextStyle(fontSize: 20),
          )
        : ListView.builder(
            itemCount: nuevaSugerida.length,
            itemBuilder: (context, index) {
              final DirectionsData listItem = nuevaSugerida[index];
              return ListTile(
                onTap: () {
                  seleccion2 = listItem.definition;
                  seleccion3 = listItem.title;
                  seleccion4 = listItem.category;
                  showResults(
                    context,
                  );
                  //confidenceGlobal = 0.0;
                },
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      listItem.title,
                      style: const TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      listItem.category,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const Divider()
                  ],
                ),
              );
            });
  }
}

//---------------------------------------- VOZ -------------------------------------

// class SpeechScreen extends StatefulWidget {
//   @override
//   _SpeechScreenState createState() => _SpeechScreenState();
// }

// class _SpeechScreenState extends State<SpeechScreen> {

//     final Map<String, HighlightedWord> _highlights = {
//     'flutter': HighlightedWord(
//       onTap: () => print('flutter'),
//       textStyle: const TextStyle(
//         color: Colors.blue,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'voice': HighlightedWord(
//       onTap: () => print('voice'),
//       textStyle: const TextStyle(
//         color: Colors.green,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'subscribe': HighlightedWord(
//       onTap: () => print('subscribe'),
//       textStyle: const TextStyle(
//         color: Colors.red,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'like': HighlightedWord(
//       onTap: () => print('like'),
//       textStyle: const TextStyle(
//         color: Colors.blueAccent,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'comment': HighlightedWord(
//       onTap: () => print('comment'),
//       textStyle: const TextStyle(
//         color: Colors.green,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   };

//   stt.SpeechToText _speech;
//   bool _isListening = false;
//   String _text = 'Toca el boton rojo y habla';
//   String _text2 = 'Resultado';
//   double _confidence = 1.0;

//   @override
//   void initState() {
//     super.initState();
//     _speech = stt.SpeechToText();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Confidence: ${(_confidence * 100.0).toStringAsFixed(1)}%'),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: AvatarGlow(
//               //animate: true,//_isListening,
//               animate: _isListening,
//               glowColor: Theme.of(context).primaryColor,
//               endRadius: 75.0,
//               duration: const Duration(milliseconds: 2000),
//               repeatPauseDuration: const Duration(milliseconds: 100),
//               repeat: true,
//               child: FloatingActionButton(
//           //onPressed: () {},
//           onPressed: _listen,
//           child: Icon(_isListening ? Icons.mic : Icons.mic_none),
//           ),
//       ),
//       body: SingleChildScrollView(
//         reverse: true,
//         child: Column(
//           children: <Widget> [
//             Container(
//               padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
//               child: TextHighlight(
//                 text: _text,
//                 words: _highlights,
//                 textStyle: const TextStyle(
//                   fontSize: 32.0,
//                   color: Colors.blueAccent,
//                   fontWeight: FontWeight.w400,
//                 ),),
//             ),
//             Container(
//               padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
//               child: TextHighlight(
//                 text: _text2,
//                 words: _highlights,
//                 textStyle: const TextStyle(
//                   fontSize: 32.0,
//                   color: Colors.blueAccent,
//                   fontWeight: FontWeight.w400,
//                 ),),
//             ),
//           ],
//         ),
//       ),

//     );
//   }

//   void _listen() async {
//     if (!_isListening) {
//       bool available = await _speech.initialize(
//         onStatus: (val) => print('onStatus: $val'),
//         onError: (val) => print('onError: $val'),
//       );
//       if (available) {
//         setState(() => _isListening = true);
//         _speech.listen(
//           onResult: (val) => setState(() {
//             _text = val.recognizedWords;
//             if (val.hasConfidenceRating && val.confidence > 0) {
//               _confidence = val.confidence;
//             }
//           }),
//         );
//       }
//     } else {
//       setState(() => _isListening = false);
//       _speech.stop();
//     }
//   }
// }