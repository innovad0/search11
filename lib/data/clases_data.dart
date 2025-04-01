import 'package:search11/cursos/teologia/ruta1.dart';
import 'package:search11/pages/home_page.dart';
import 'package:search11/pages/list_course.dart';

import 'package:search11/pages/video_test1.dart';

import '../model/clase.dart';

final coursesData = [
  Clases(
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
    courseTag: tags[0],
  ),
  Clases(
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
    courseTag: tags[1],
  ),
  Clases(
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
    courseTag: tags[2],
  ),
  Clases(
    id: '4',
    imageUrl: 'assets/images/image4.jpeg',
    rating: '4.0',
    isBookmarked: false,
    courseTitle: 'Excel from Beginner to Advanced',
    instructor: 'Kyle Pew',
    price: "\$22.00",
    duration: '39hr 30mins',
    sectionsLength: '50 Lessons',
    sectionLaps: sections,
    courseTag: tags[3],
  ),
  Clases(
    id: '5',
    imageUrl: 'assets/images/image5.jpeg',
    rating: '4.2',
    isBookmarked: true,
    courseTitle: 'Public Relations: Media Crisis',
    instructor: 'Walker',
    price: "\$20.00",
    duration: '24hr 50mins',
    sectionsLength: '50 Lessons',
    sectionLaps: [
      ['Introduccion al curso', '20 min'],
      ['Contenido', '4h 40 min'],
      ['Ejemplos y ejercicios', '2h 20 min'],
      ['Conclusion', '40 min'],
      ['Conclusion', '40 min'],
      ['Introduccion al curso', '20 min'],
      ['Contenido', '4h 40 min'],
      ['Ejemplos y ejercicios', '2h 20 min'],
      ['Conclusion', '40 min'],
      ['Conclusion', '40 min'],
    ],
    pages: [ //RUTAS DE LOS VIDEOS
    const VideoTest1(),
    const HomePage(),
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
  ['Conclusion', '40 min'],
];

List tags = [ 'Teclado', 'Nuevo', 'Best Seller', '50% discount', 'Free', ];