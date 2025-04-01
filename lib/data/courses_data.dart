import 'package:search11/cursos/teologia/ruta1.dart';
//import 'package:search11/pages/home_page.dart';
import 'package:search11/pages/list_course.dart';
//import 'package:search11/pages/videoTest.dart';
//import 'package:search11/pages/video_test1.dart';

import '../model/course.dart';

final coursesData = [
  Course(
    id: '1',
    imageUrl: 'assets/images/1.jpg',
    rating: '4.5',
    isBookmarked: false,
    courseTitle: 'Predicacion 28-08-24',
    instructor: 'Dr. Angela Yu',
    price: "\$29.00",
    duration: '30hr 30mins',
    sectionsLength: '10 Lecciones',
    sectionLaps: sections,
    pages: [ //RUTAS DE LOS VIDEOS
    const Ruta1(),
    const Ruta1(),
    const Ruta1(),
    const ListCoursePage()],
    courseTag: tags[0],
  ),
  Course(
    id: '2',
    imageUrl: 'assets/images/2.jpg',
    rating: '4.2',
    isBookmarked: true,
    courseTitle: 'Teologia Avanzada',
    instructor: 'Chris Croft',
    price: "\$20.00",
    duration: '4hr 10mins',
    sectionsLength: '5 Lecciones',
    sectionLaps: sections,
    pages: [ //RUTAS DE LOS VIDEOS
    const Ruta1(),
    const Ruta1(),
    const Ruta1(),
    const ListCoursePage()],
    courseTag: tags[1],
  ),
  Course(
    id: '3',
    imageUrl: 'assets/images/3.jpg',
    rating: '3.9',
    isBookmarked: true,
    courseTitle: 'Teclado Basico Cristiano',
    instructor: 'Walker',
    price: "\$12.00",
    duration: '4hr 30mins',
    sectionsLength: '5 Lecciones',
    sectionLaps: sections,
    pages: [ //RUTAS DE LOS VIDEOS
    const Ruta1(),
    const Ruta1(),
    const Ruta1(),
    const ListCoursePage()],
    courseTag: tags[2],
  ),
  Course(
    id: '4',
    imageUrl: 'assets/images/5.png',
    rating: '4.0',
    isBookmarked: false,
    courseTitle: 'El poder del perdon',
    instructor: 'Kyle Pew',
    price: "\$22.00",
    duration: '39hr 30mins',
    sectionsLength: '50 Lessons',
    sectionLaps: sections,
    pages: [ //RUTAS DE LOS VIDEOS
    const Ruta1(),
    const Ruta1(),
    const Ruta1(),
    const ListCoursePage()],
    courseTag: tags[3],
  ),
  Course(
    id: '5',
    imageUrl: 'assets/images/6.png',
    rating: '4.2',
    isBookmarked: true,
    courseTitle: 'Evangelismo',
    instructor: 'Walker',
    price: "\$20.00",
    duration: '24hr 50mins',
    sectionsLength: '50 Lessons',
    sectionLaps: [
      ['Introduccion al curso', '20 min'],
      ['Contenido', '4h 40 min'],
      ['Ejemplos y ejercicios', '2h 20 min'],
      ['Conclusion', '40 min'],
      // ['Conclusion', '40 min'],
      // ['Introduccion al curso', '20 min'],
      // ['Contenido', '4h 40 min'],
      // ['Ejemplos y ejercicios', '2h 20 min'],
      // ['Conclusion', '40 min'],
      // ['Conclusion', '40 min'],
    ],
    pages: [ //RUTAS DE LOS VIDEOS
    const Ruta1(),
    const Ruta1(),
    const Ruta1(),
    const ListCoursePage(),
  ],
    courseTag: tags[4],
  ),
];

List sections = [
  ['Introduccion al curso', '20 min'],
  ['Contenido', '4h 40 min'],
  ['Ejemplos y ejercicios', '2h 20 min'],
  ['Conclusion', '40 min'],
  
];

List tags = [ 'Teclado', 'Nuevo', 'Best Seller', '50% discount', 'Free', ];