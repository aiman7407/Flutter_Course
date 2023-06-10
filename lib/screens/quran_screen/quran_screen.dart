import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../model/quran_modle.dart';
class QuranScreen extends StatefulWidget {
  const QuranScreen({Key? key}) : super(key: key);

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  List<AudioPlayer> audios=[
    AudioPlayer(),
    AudioPlayer(),
    AudioPlayer(),
  ];
  List<QuranModel> data=[
    QuranModel(image: "assets/images/1.jpg",
        audio: "https://firebasestorage.googleapis.com/v0/b/eraa-app-7ca6c.appspot.com/o/audios%2F%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%81%D8%A7%D8%AA%D8%AD%D8%A9%20%D8%A8%D8%B5%D9%88%D8%AA%20%D8%A7%D9%84%D9%82%D8%A7%D8%B1%D8%A6%20%D9%85%D8%A7%D9%87%D8%B1%20%D8%A7%D9%84%D9%85%D8%B9%D9%8A%D9%82%D9%84%D9%8A(MP3_160K).mp3?alt=media&token=1eef113c-d986-4a90-b140-02bbcd3fcb0c&_gl=1*hhurdc*_ga*MTExMTExMzU4LjE2MzQxNzAzMjA.*_ga_CW55HF8NVT*MTY4NjMwMDU5Ny4yNC4xLjE2ODYzMDExOTQuMC4wLjA."),
    QuranModel(image: "assets/images/2.jpg", audio: "https://firebasestorage.googleapis.com/v0/b/eraa-app-7ca6c.appspot.com/o/audios%2F%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%A7%D8%AE%D9%84%D8%A7%D8%B5%20%D9%85%D9%83%D8%AA%D9%88%D8%A8%D8%A9%20%D9%85%D8%A7%D9%87%D8%B1%20%D8%A7%D9%84%D9%85%D8%B9%D9%8A%D9%82%D9%84%D9%8A%20-%20Surat%20Al-Ikhl%C3%A2s%20Maher%20al%20Muaiqly(MP3_160K).mp3?alt=media&token=69fe0cb2-f48b-4af8-8694-ba404ee7e342&_gl=1*xd6ny*_ga*MTExMTExMzU4LjE2MzQxNzAzMjA.*_ga_CW55HF8NVT*MTY4NjMwMDU5Ny4yNC4xLjE2ODYzMDEyMjEuMC4wLjA."),
    QuranModel(image: "assets/images/3.png", audio: "https://firebasestorage.googleapis.com/v0/b/eraa-app-7ca6c.appspot.com/o/audios%2F%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%81%D9%84%D9%82%20%D9%85%D9%83%D8%AA%D9%88%D8%A8%D8%A9%20%D9%85%D8%A7%D9%87%D8%B1%20%D8%A7%D9%84%D9%85%D8%B9%D9%8A%D9%82%D9%84%D9%8A%20-%20Surat%20Al-Falaq%20Maher%20al%20Muaiqly(MP3_160K).mp3?alt=media&token=0ebf3623-77e5-4658-8c20-4a36317604b8&_gl=1*1ey29q3*_ga*MTExMTExMzU4LjE2MzQxNzAzMjA.*_ga_CW55HF8NVT*MTY4NjMwMDU5Ny4yNC4xLjE2ODYzMDEyMzIuMC4wLjA.`"),
  ];


  @override
  void initState() {

    AudioPlayer audioPlayer=AudioPlayer();

    for(int i=0;i<audios.length;i++){
      if(i==0){
        audios[i].setSourceUrl(data[i].audio).then((value) {
          audios[i].resume();
        });

      }else{
        audios[i].setSourceUrl(data[i].audio);

      }

    }
    super.initState();
  }

  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quran Screen"),
      ),
      body: Column(
        children: [
          Image.asset(data[currentIndex].image),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,            children: [
              TextButton(onPressed: (){
                if(currentIndex!=0){
                  setState(() {
                    audios[currentIndex].pause();
                    currentIndex--;
                    audios[currentIndex]=AudioPlayer();
                    audios[currentIndex].setSourceUrl(data[currentIndex].audio).then((value) {
                      audios[currentIndex].resume();
                    });
                  });
                }
              }, child: Text("Previous")),
              TextButton(onPressed: (){
                audios[currentIndex].pause();
              }, child: Text("pause")),
              TextButton(onPressed: (){
               if(currentIndex!=data.length-1){
                 setState(() {
                   audios[currentIndex].dispose();
                   currentIndex++;
                   audios[currentIndex].resume();
                 });
               }
              }, child: Text("Next")),
            ],
          )
        ],
      ),
    );
  }
}
