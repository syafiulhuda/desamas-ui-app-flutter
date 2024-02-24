import 'package:desamas/screen_details/detail_riwayat.dart';
import 'package:flutter/material.dart';

class RiwayatScreen extends StatelessWidget {
  RiwayatScreen({super.key});

  final List<String> title = [
    'Pengajuan E-KTP Baru',
    'Pengajuan Surat Penghasilan',
    'Pengajuan SKTM',
  ];

  final List<String> subtitle = [
    '25 November 2023',
    '30 November 2023',
    '15 Desember 2023',
  ];

  final List<Widget> trailingAtas = [
    const Icon(
      Icons.info_outline_rounded,
      color: Color.fromRGBO(31, 175, 176, 1),
      size: 30,
    ),
    const Icon(
      Icons.info_outline_rounded,
      color: Color.fromRGBO(31, 175, 176, 1),
      size: 30,
    ),
    const Icon(
      Icons.info_outline_rounded,
      color: Color.fromRGBO(31, 175, 176, 1),
      size: 30,
    ),
  ];

  final List<Widget> trailingBawah = [
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.delete_outline_outlined),
      color: const Color.fromRGBO(31, 175, 176, 1),
      iconSize: 30,
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.delete_outline_outlined),
      color: const Color.fromRGBO(31, 175, 176, 1),
      iconSize: 30,
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.delete_outline_outlined),
      color: const Color.fromRGBO(31, 175, 176, 1),
      iconSize: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Riwayat Pengajuan"),
        backgroundColor: const Color.fromRGBO(31, 175, 176, 1),
        elevation: 5,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        color: const Color.fromARGB(255, 237, 237, 237),
        child: ListView.builder(
          itemCount: title.length,
          itemBuilder: (context, index) {
            return Container(
                padding: const EdgeInsets.all(10),
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    title: Text(
                      title[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: Text(subtitle[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const DetailRiwayat();
                                },
                              ),
                            );
                          },
                          child: trailingAtas[index],
                        ),
                        trailingBawah[index],
                      ],
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
