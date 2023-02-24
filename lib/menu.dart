import 'package:cs311hw9/videoscreen.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Younube'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            VideoCard(
              videoPath: 'assets/videos/dog.mp4',
              imgPath: 'assets/pics/dog.png',
              title: 'จุ๊มเหม่ง',
              username: 'Japan and friends',
            ),
            VideoCard(
              videoPath: 'assets/videos/dog2.mp4',
              imgPath: 'assets/pics/dog2.png',
              title: 'จุ๊มเหม่ง เข้าครัว',
              username: 'Japan and friends',
            ),
            VideoCard(
              videoPath: 'assets/videos/lion.mp4',
              imgPath: 'assets/pics/lion.png',
              title: 'เหมียว',
              username: 'แมวน้อย',
            ),
            VideoCard(
              videoPath: 'assets/videos/rain.mp4',
              imgPath: 'assets/pics/rain.png',
              title: 'ฝนตก แหมะ แหมะ',
              username: 'เจ้าชายแห่งฝน',
            ),
            VideoCard(
              videoPath: 'assets/videos/sunrise.mp4',
              imgPath: 'assets/pics/sunrise.png',
              title: 'มันช่างจ้าซะเหลือเกิน',
              username: 'อาทิตย์',
            ),
          ],
        ));
  }
}

class VideoCard extends StatelessWidget {
  VideoCard(
      {Key? key,
      required this.videoPath,
      required this.imgPath,
      required this.title,
      required this.username})
      : super(key: key);
  late String videoPath;
  late String imgPath;
  late String title;
  late String username;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VideoScreen(
            videoPath: videoPath,
            title: title,
          ),
        ));
      },
      child: Card(
        child: Column(
          children: [
            Image.asset(
              imgPath,
              height: 500,
            ),
            ListTile(
              leading: const CircleAvatar(),
              title: Text(title),
              subtitle: Text('$username . 6 hours ago'),
            )
          ],
        ),
      ),
    );
  }
}
