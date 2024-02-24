import 'package:desamas/screen_details/detail_pengajuan_ektp.dart';
import 'package:flutter/material.dart';

class DetailEKtp extends StatelessWidget {
  DetailEKtp({super.key});

  final List<String> leading = [
    'Pengajuan E-KTP Baru',
    'Pengajuan E-KTP Rusak',
    'Pengajuan E-KTP Hilang',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Permohonan E-KTP",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromRGBO(31, 175, 176, 1),
      ),
      body: Container(
        color: const Color.fromARGB(255, 237, 237, 237),
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 10,
          left: 10,
          right: 10,
        ),
        child: ListView.builder(
          itemCount: leading.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Text(
                  leading[index],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    // Future.delayed(
                    //   const Duration(seconds: 1),
                    //   () {
                    //     Navigator.pop(context); // Menutup dialog loading
                    //     Navigator.push(context, MaterialPageRoute(
                    //       builder: (context) {
                    //         return const DetailPengajuanEKTP();
                    //       },
                    //     ));
                    //   },
                    // );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const DetailPengajuanEKTP();
                        },
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                  iconSize: 30,
                  color: const Color.fromRGBO(31, 175, 176, 1),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
