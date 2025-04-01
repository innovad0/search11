import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Ruta1 extends StatelessWidget {
  const Ruta1({super.key});

  @override
  Widget build(BuildContext context) {
    String videoId = 'zdMGlxQdKiE'; // Reemplaza con el ID de tu video de YouTube

    YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
        "Clase 1",
        style: TextStyle(
          //color: Colors.black,
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
      ),
      ),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:759137980.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3245160946.

body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 400, // Ajusta la altura del reproductor de video según tus necesidades
              child: YoutubePlayer(
                controller: controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
                progressColors: const ProgressBarColors(
                  playedColor: Colors.blue,
                  handleColor: Colors.blueAccent,
                ),
              ),
            ),
            const SizedBox(
              height: 41, ),
            const Text("Teologia 1", style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20
                ),),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(IconlyLight.time_circle,
                        size: 19, color: Colors.grey[400]),
                    const SizedBox(width: 5),
                    Text("29",
                        style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.bold, fontSize: 13)),
                    const SizedBox(width: 5),
                    const Text('  •  '),
                    const SizedBox(width: 5),
                    const Text('  •  '),
                    const SizedBox(width: 5),
                    Icon(IconlyBold.star, size: 15, color: Colors.yellow[800]),
                  ],
                ),
                const SizedBox(height: 10,),
                const Text('Acerca de la clase',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                const SizedBox(height: 5),
                const Text("Lorem ipsum dolor sit amet. Ut sunt tenetur cum galisum dignissimos ut aliquam fugit aut animi maiores sit dolores blanditiis. A unde facilis qui quas accusamus eos ipsum illum. Rem beatae sint nam culpa inventore qui doloribus molestiae 33 dolorem eaque. In error voluptatem sed architecto minus et quisquam soluta.Qui omnis expedita et sapiente molestias sed quia fugit ut reiciendis maxime non voluptatem numquam At libero aliquam. Sit enim beatae ut optio impedit qui laborum eaque!",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 5),


            
            // Container(
            //   padding: const EdgeInsets.all(16.0),
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.blue, width: 5.1, strokeAlign: -5.1),
            //   ),
            //   child: const Text(
            //     '''Lorem ipsum dolor sit amet. Ut sunt tenetur cum galisum dignissimos ut aliquam fugit aut animi maiores sit dolores blanditiis. A unde facilis qui quas accusamus eos ipsum illum. Rem beatae sint nam culpa inventore qui doloribus molestiae 33 dolorem eaque. In error voluptatem sed architecto minus et quisquam soluta.Qui omnis expedita et sapiente molestias sed quia fugit ut reiciendis maxime non voluptatem numquam At libero aliquam. Sit enim beatae ut optio impedit qui laborum eaque!
            //       ''',
            //     style: TextStyle(fontSize: 18),
            //   ),
            // ),
            // Container(
            //   padding: const EdgeInsets.all(16.0),
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.blue, width: 5.1, strokeAlign: -5.1),
            //   ),
            //   child: const Text(
            //     'PREGUNTAS',
            //     style: TextStyle(fontSize: 18),
            //   ),
            // ),

          ],        ),

      ),

    );
  }


  
}