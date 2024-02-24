import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _TestState();
}

class _TestState extends State<LoginScreen> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  final List<String> imageList = [
    "assets/img/vector-1.png",
    "assets/img/vector-2.png",
    "assets/img/vector-3.png",
  ];

  final List<String> judulVectorList = [
    'Pilih Permohonan Pengajuan',
    'Upload Dokumen',
    'Status Pengajuan',
  ];

  final List<String> deskripsiVectorList = [
    'Pilih mau kamu apa?',
    'Tinggal unggah dokumen yang dibutuhkan sebagai persyaratan',
    'Cek status dokumenmu\nbiar gak gelisah',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: imageList.map((imagePath) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        imagePath,
                        fit: BoxFit.fitWidth,
                        height: 300,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        judulVectorList[imageList.indexOf(imagePath)],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        deskripsiVectorList[imageList.indexOf(imagePath)],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 500,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration: const Duration(seconds: 1),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeFactor: 0.3,
                aspectRatio: 16 / 9,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.black
                              : const Color.fromRGBO(31, 175, 176, 1))
                          .withOpacity(_current == entry.key ? 0.9 : 0.4),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/layout');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(31, 175, 176, 1),
                elevation: 2,
                minimumSize: Size(
                  MediaQuery.of(context).size.width * 0.7, // Lebar
                  50, // Tinggi
                ),
              ),
              child: const Text(
                "Masuk sebagai rakyat biasa",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/layout');
              },
              child: const Text(
                "Daftar sebagai pejabat (tapi jangan korupsi ya)",
                style: TextStyle(
                  color: Color.fromRGBO(31, 175, 176, 1),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
