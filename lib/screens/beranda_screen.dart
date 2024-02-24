import 'package:desamas/screen_details/detail_ektp.dart';
import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 237, 237, 237),
      child: Stack(
        children: [
          const KontainerAtas(),
          CardTengah(),
          const KontainerBawah(),
        ],
      ),
    );
  }
}

//
//
class KontainerAtas extends StatelessWidget {
  const KontainerAtas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.42,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(31, 175, 176, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Desamas",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.asset(
                      "assets/img/avatar.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Muhammad Syafiul Huda",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Pengangguran",
                          style: TextStyle(
                            color: Colors.white.withOpacity(1),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Text(
                        "Klagensrampat - Lamongan",
                        style: TextStyle(
                          color: Colors.white.withOpacity(1),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//
//

//
//
class CardTengah extends StatelessWidget {
  CardTengah({super.key});

  final List<Image> iconMenu = [
    Image.asset("assets/icons/1.png"),
    Image.asset("assets/icons/4.png"),
    Image.asset("assets/icons/5.png"),
    Image.asset("assets/icons/3.png"),
    Image.asset("assets/icons/2.png"),
    Image.asset("assets/icons/6.png"),
    Image.asset("assets/icons/7.png"),
    // Image.asset("assets/icons/8.png"),
    Image.asset("assets/icons/9.png"),
  ];

  final List<List<Color>> gradients = [
    [
      const Color.fromRGBO(255, 182, 159, 0.65),
      const Color.fromRGBO(255, 193, 174, 0.15),
    ],
    [
      const Color.fromRGBO(77, 208, 225, 0.65),
      const Color.fromRGBO(128, 240, 255, 0.15),
    ],
    [
      const Color.fromRGBO(66, 110, 143, 0.65),
      const Color.fromRGBO(112, 190, 250, 0.15),
    ],
    [
      const Color.fromRGBO(135, 192, 128, 0.65),
      const Color.fromRGBO(149, 255, 136, 0.15),
    ],
    [
      const Color.fromRGBO(255, 153, 187, 0.65),
      const Color.fromRGBO(253, 177, 202, 0.15),
    ],
    [
      const Color.fromRGBO(255, 229, 148, 0.65),
      const Color.fromRGBO(255, 223, 119, 0.15),
    ],
    [
      const Color.fromRGBO(3, 183, 228, 0.65),
      const Color.fromRGBO(67, 170, 195, 0.15),
    ],
    // [
    //   const Color.fromRGBO(255, 229, 148, 0.65),
    //   const Color.fromRGBO(255, 223, 119, 0.15),
    // ],
    [
      const Color.fromRGBO(189, 237, 230, 0.65),
      const Color.fromRGBO(162, 228, 219, 0.15),
    ],
  ];

  final List<String> menuList = [
    'E-KTP',
    'SKTM',
    'Kartu\nKeluarga',
    'Akta\nKelahiran',
    'Surat\nDomisili',
    'Surat\nPenghasilan',
    'Akta\nKematian',
    // 'Pengantar\nPernikahan',
    'Menu\nLainya',
  ];

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 210,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width,
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: iconMenu.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  (menuList[index] == 'E-KTP')
                      ? Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return DetailEKtp();
                          },
                        ))
                      : () {};
                },
                child: Column(
                  children: [
                    Container(
                      width: 45, // Sesuaikan dengan kebutuhan
                      height: 45, // Sesuaikan dengan kebutuhan
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: gradients[index],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        child: iconMenu[index],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      menuList[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
//
//

//
//
class KontainerBawah extends StatelessWidget {
  const KontainerBawah({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: MediaQuery.of(context).size.height *
            (320 / MediaQuery.of(context).size.height), // 320
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListViewPertama(),
            const SizedBox(
              height: 20,
            ),
            ListViewKedua(),
            const SizedBox(
              height: 20,
            ),
            ListViewKetiga(),
          ],
        ),
      ),
    );
  }
}
//
//

//
//
class ListViewPertama extends StatelessWidget {
  ListViewPertama({
    super.key,
  });

  final List<Image> iconList = [
    Image.asset("assets/icons/product.png"),
    Image.asset("assets/icons/activity.png"),
    Image.asset(
      "assets/icons/soon.png",
      color: Colors.black.withOpacity(0.5),
    ),
  ];

  final List<String> judulIcon = [
    'Produk Olahan Pertanian\n& Peternakan',
    'Kegiatan',
    'Segera Hadir',
  ];

  final List<String> deskIcon = [
    'Lihat Detail',
    'Lihat Detail',
    '........',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, bottom: 5),
          child: const Text(
            'BUMDES',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color.fromRGBO(31, 175, 176, 1),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            itemCount: iconList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 15),
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 5),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 25,
                        child: iconList[index],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    (judulIcon[index] == 'Segera Hadir')
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                judulIcon[index],
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                deskIcon[index],
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(31, 175, 176, 1)
                                      .withOpacity(0.5),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                judulIcon[index],
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                deskIcon[index],
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(31, 175, 176, 1),
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
//
//

//
//
class ListViewKedua extends StatelessWidget {
  ListViewKedua({
    super.key,
  });

  final List<Image> iconList = [
    Image.asset("assets/icons/book.png"),
    Image.asset("assets/icons/water-book.png"),
    Image.asset("assets/icons/education-book.png"),
    Image.asset("assets/icons/farm-book.png"),
  ];

  final List<String> judulIcon = [
    'Pembangunan\nInfrastruktur',
    'Irigasi Desa',
    'Pendidikan',
    'Pertanian & Peternakan',
  ];

  final List<String> deskIcon = [
    'Download Laporan Keuangan',
    'Download Laporan Keuangan',
    'Download Laporan Keuangan',
    'Download Laporan Keuangan',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, bottom: 5),
          child: const Text(
            'Alokasi Penggunaan Dana Desa',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color.fromRGBO(31, 175, 176, 1),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            itemCount: iconList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 15),
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 5),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 25,
                        child: iconList[index],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          judulIcon[index],
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          deskIcon[index],
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(31, 175, 176, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
//
//

//
//
class ListViewKetiga extends StatelessWidget {
  ListViewKetiga({
    super.key,
  });

  final List<Image> imgList = [
    Image.asset(
      "assets/img/poster-1.png",
      fit: BoxFit.fitWidth,
    ),
    Image.asset(
      "assets/img/poster-2.png",
      fit: BoxFit.fitWidth,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, bottom: 5),
          child: const Text(
            'Event Desa',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color.fromRGBO(31, 175, 176, 1),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 280,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            itemCount: imgList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 15, bottom: 10),
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InstaImageViewer(
                  disposeLevel: DisposeLevel.high,
                  backgroundColor: const Color.fromARGB(255, 237, 237, 237),
                  child: Container(
                    child: imgList[index],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
//
//
