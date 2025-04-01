import 'package:search11/pages/course_detail_page.dart';


import 'package:search11/pages/onboarding_page.dart';
import 'package:search11/pages/onboarding_page0.dart';
import 'package:search11/pages/onboarding_page1.dart';
import 'package:search11/pages/onboarding_page2.dart';
import 'package:search11/pages/onboarding_page3.dart';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainTabBarPage(),
      routes: {
        CourseDetailPage.routeName: (ctx) => const CourseDetailPage(),
      },
    )
  );
}

class MainTabBarPage extends StatefulWidget {
  const MainTabBarPage({super.key});

  @override
  State<MainTabBarPage> createState() => _MainTabBarPageState();
}

class _MainTabBarPageState extends State<MainTabBarPage> {
  int selectedIndex = 2;

  static List<Widget> tabBarPages = [
    
    Onboarding0Page(
        pages: [
          Onboarding0PageModel(
            title: 'CURSOS',
            description:
                'El conocimiento te acerca a la verdad.',
            image: 'assets/images/LOGOSCURSO6.png',
            bgColor: const Color.fromARGB(255, 32, 151, 210),
          ),
          Onboarding0PageModel(
            title: 'FORMACION',
            description: 'La fe se fortalece con la comprensión.',
            image: 'assets/images/LOGOSCURSO1.png',
            bgColor: const Color(0xff1eb090),
          ),
          // Onboarding0PageModel(
          //   title: 'ESTUDIO',
          //   description:
          //       'El estudio espiritual es un viaje de crecimiento personal.',
          //   image: 'assets/images/LOGOSCURSO2.png',
          //   bgColor: const Color(0xfffeae4f),
          // ),
          // Onboarding0PageModel(
          //   title: 'CONOCIMIENTO',
          //   description: 'La sabiduría divina ilumina el camino.',
          //   image: 'assets/images/LOGOSCURSO4.png',
          //   bgColor: Colors.purple,
          // ),
        ],
      ),
    
    //--------------------------------
    //const HomePage(),
    //-----------------------------------
    OnboardingPage(
        pages: [
          OnboardingPageModel(
            title: 'HIMNOS',
            description:
                'Los himnos elevan el espíritu y fortalecen la fe.',
            image: 'assets/images/LOGOSHIMNOS5.png',
            bgColor: const Color.fromARGB(255, 222, 137, 69),
          ),
          OnboardingPageModel(
            title: 'ALABANZA.',
            description: 'La música es una oración cantada.',
            image: 'assets/images/LOGOSHIMNOS3.png',
            bgColor: const Color.fromARGB(255, 122, 76, 6),
          ),
          // OnboardingPageModel(
          //   title: 'DEVOCION',
          //   description:
          //       'Un himno puede ser una fuente de consuelo en tiempos difíciles.',
          //   image: 'assets/images/LOGOSHIMNOS2.png',
          //   bgColor: const Color.fromARGB(255, 196, 98, 62),
          // ),
          // OnboardingPageModel(
          //   title: 'ADORACION',
          //   description: 'Cantar himnos es compartir la fe con otros.',
          //   image: 'assets/images/LOGOSHIMNOS4.png',
          //   bgColor: const Color.fromARGB(255, 174, 128, 75),
          // ),
        ],
      ),
    //-----------------------------------
    //-----------------------------------
    Onboarding1Page(
        pages: [
          Onboarding1PageModel(
            title: 'CURSOS, HIMNOS Y BIBLIA',
            description:
                'Utilidades y herramientas',
            image: 'assets/images/logoaap2.png',
            bgColor:  Colors.blueAccent,
          ),
          // Onboarding1PageModel(
          //   title: 'REUNIONES',
          //   description: 'Unidos en oración, fortalecidos en comunidad',      
          //   image: 'assets/images/reuniones3.png',
          //   bgColor: const Color.fromARGB(255, 44, 62, 165),
          // ),
          // Onboarding1PageModel(
          //   title: 'UBICACION',
          //   description:
          //       'Calle Jalisco numero 6, Colonia: Villa Rica, Boca del Rio, Veracruz.',
          //   image: 'assets/images/UBICACION.png',
          //   bgColor: const Color(0xfffeae4f),
          // ),
          // Onboarding1PageModel(
          //   title: 'LIBRERIA',
          //   description: 'Libros que alimentan el alma y fortalecen el espíritu.',
          //   image: 'assets/images/paloma.png',
          //   bgColor: Colors.purple,
          // ),
        ],
      ),
    //-----------------------------------
    //-----------------------------------
    Onboarding2Page(
        pages: [
          Onboarding2PageModel(
            title: 'BIBLIOTECA',
            description:
                'Descubre la verdad divina en cada página.',
            image: 'assets/images/Biblio4.png',
            bgColor: const Color.fromARGB(255, 112, 63, 181),
          ),
          // Onboarding2PageModel(
          //   title: 'TEOLOGIA.',
          //   description: 'Conocimiento para el alma, sabiduría para la vida.',
          //   image: 'assets/images/Biblio2.png',
          //   bgColor: const Color(0xff1eb090),
          // ),
          // Onboarding2PageModel(
          //   title: 'DOCTRINA',
          //   description:
          //       'Un espacio para crecer en fe y comprensión.',
          //   image: 'assets/images/Biblio3.png',
          //   bgColor: const Color(0xfffeae4f),
          // ),
          Onboarding2PageModel(
            title: 'ESCRITURAS',
            description: 'Donde la fe y el saber se encuentran.',
            image: 'assets/images/Biblio.png',
            bgColor: Colors.purple,
          ),
        ],
      ),
    //-----------------------------------
    //-----------------------------------
    Onboarding3Page(
        pages: [
          Onboarding3PageModel(
            title: 'A CERCA DE',
            description:
                'Dedicados a Servir.',
            image: 'assets/images/logoaap2.png',
            bgColor: const Color.fromARGB(255, 181, 63, 79),
          ),
          // Onboarding3PageModel(
          //   title: 'EVANGELIO',
          //   description: 'La verdad de Dios, predicada con amor.',
          //   image: 'assets/images/sermones3.png',
          //   bgColor: const Color(0xff1eb090),
          // ),
          // Onboarding3PageModel(
          //   title: 'REDENCION',
          //   description:
          //       'Sermones que edifican tu fe y esperanza.',
          //   image: 'assets/images/sermones4.png',
          //   bgColor: const Color(0xfffeae4f),
          // ),
          // Onboarding3PageModel(
          //   title: 'MENSAJE',
          //   description: 'El mensaje eterno, renovado para ti.',
          //   image: 'assets/images/sermones5.png',
          //   bgColor: Colors.purple,
          // ),
        ],
      ),
    //-----------------------------------
    
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabBarPages[selectedIndex],
      bottomNavigationBar: bottomNavigationBar(context),
    );
  }

  BottomNavigationBar bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.blueAccent,
      unselectedItemColor: Colors.black54,
      selectedItemColor: Colors.white,
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: const [
          BottomNavigationBarItem(icon: Icon(IconlyBold.play), label: "Cursos"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.folder), label: "Himnos"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.chart), label: "Biblioteca"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.profile), label: "Acerca de"),
      ],
    );
  }

}




// import 'package:flutter/material.dart';
// import 'package:search11/page/page.dart';

// void main() {
//   runApp(const search11());
// }

// class search11 extends StatelessWidget {
//   const search11({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'flutter busqueda',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: instructions_Directions(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
