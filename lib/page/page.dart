// VENTANA instrucciones frases
// ignore_for_file: library_private_types_in_public_api, camel_case_types, file_names, duplicate_ignore

import 'package:flutter/material.dart';
//import 'package:toeflapp/pages/voz.dart';
import 'package:search11/search/search.dart';

//import 'home_page.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class instructions_Directions extends StatefulWidget {
  @override
  _instructions_DirectionsState createState() => _instructions_DirectionsState();
}

class _instructions_DirectionsState extends State<instructions_Directions> {
  @override
  Widget build(BuildContext context) {
    //final dynamic texImport = ModalRoute.of(context).settings.arguments;
    //final String images2 = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      //body: Center(child: Text(images2[0].toString()),),
      //body: Center(child: Image.asset( images2[0]),)
      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 10.0,
            ),
            _posterTitulo(context),
            //_descripcion(),
          ]))
        ],
      ),
    );
  }

  Widget _crearAppBar() {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Colors.indigoAccent,
      expandedHeight: 150.0,
      floating: true,
      pinned: true,
      forceElevated: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        //titlePadding: EdgeInsets.all(20),
        centerTitle: false,
        title: const Text(
          'Practice Directions',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        background: Container(
                color: Colors.blue,
              ),
        // background: FadeInImage(
        //   placeholder: AssetImage('assets/4.jpg'),
        //   //image: AssetImage('assets/$heren1.jpg'), // imagen cambia automaticamente segun el indice de cardswiper
        //   image: AssetImage('assets/f1.jpg'),
        //   fadeInDuration: Duration(milliseconds: 1500),
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }

  Widget _posterTitulo(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          // ClipRRect (
          //     borderRadius: BorderRadius.circular(20.0),
          //     child: Image(
          //       image: AssetImage('assets/$index1.jpg'),
          //       height: 150.0,
          //     ),
          //   ),

          const SizedBox(width: 20.0),
          Flexible(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  //alignment: Alignment(30, 10),
                  icon: const Icon(Icons.add_circle_rounded),
                  iconSize: 80.0,
                  color: Colors.blueAccent,
                  // hoverColor: Colors.redAccent,
                  // disabledColor: Colors.redAccent,
                  // focusColor: Colors.redAccent,
                  // splashColor: Colors.redAccent,
                  // highlightColor: Colors.redAccent,
                  onPressed: () {
                    //ewe = '';
                    showSearch(context: context, delegate: DirectionsDataSearch());
                  }),
              const Text('Click on the icon to start',
                  style: TextStyle(color: Colors.black, fontSize: 16.0)),
              const SizedBox(width: 15, height: 50),
              const Icon(Icons.accessibility),
              const Text('Thanks:',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 16.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(width: 15, height: 50),
                  // const Text('Personal Life',
                  //     style: TextStyle(color: Colors.black, fontSize: 26.0)),
                  // const SizedBox(width: 15, height: 10),
                  // Image.asset('assets/Community.jpg'),
                  
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[],
                  )

                  // IconButton(
                  //   alignment: Alignment(30, 10),
                  //   icon: Icon(Icons.search),
                  //   onPressed: (){
                  //     showSearch(
                  //     context: context,
                  //     delegate: FoodItemSearch()
                  //               );
                  //                 }),
                  //Icon(Icons.copyright),
                  //Text('Cella', style: TextStyle(color: Colors.blueGrey, fontSize: 16.0))
                ],
              )
            ],
          ))
        ],
      ),
    );
  }

  // _descripcion() {
  //   return Container(
  //       padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: <Widget>[
  //           // const Text('Instructions',
  //           //     style: TextStyle(color: Colors.blueGrey, fontSize: 16.0)),
  //           Row(
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: const <Widget>[
                
  //               Icon(Icons.accessibility),
  //               Text('Thanks:',
  //                   style: TextStyle(color: Colors.blueGrey, fontSize: 16.0))
  //             ],
  //           )
  //         ],
  //       ));
  // }
}
