import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class DetailRiwayat extends StatelessWidget {
  const DetailRiwayat({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          KontainerBawah(),
          const KontainerAtas(),
          const CardDetail(),
        ],
      ),
    );
  }
}

class KontainerBawah extends StatelessWidget {
  KontainerBawah({
    super.key,
  });

  final List<String> title = [
    'Jadwal Pengambilan E-KTP',
    'Pengambilan Foto E-KTP',
    'Verifikasi Data',
    'Pengisian Data',
    'Pengajuan Pembuatan E-KTP',
  ];

  final List<String> items1 = [
    'Pengambilan E-KTP',
    'Pengambilan foto',
    'Pengajuan diterima',
    'Pengisian data diri',
    'Pengajuan terkirim',
  ];

  final List<String> items2 = [
    '01 Januari 2024',
    '25 November 2023',
    '20 November 2023',
    '18 November 2023',
    '15 November 2023',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 237, 237, 237),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: MediaQuery.of(context).size.height *
              (510 / MediaQuery.of(context).size.height),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Timeline Pengajuan",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    (480 / MediaQuery.of(context).size.height), // 480
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: [
                    FixedTimeline.tileBuilder(
                      builder: TimelineTileBuilder.connectedFromStyle(
                        connectionDirection: ConnectionDirection.after,
                        contentsAlign: ContentsAlign.alternating,
                        oppositeContentsBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              (items1[index] == 'Pengambilan E-KTP')
                                  ? Text(
                                      items1[index],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(31, 175, 176, 1),
                                      ),
                                    )
                                  : Text(
                                      items1[index],
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.4),
                                      ),
                                    ),
                              (items2[index] == '01 Januari 2024')
                                  ? Text(
                                      items2[index],
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(31, 175, 176, 1),
                                      ),
                                    )
                                  : Text(
                                      items2[index],
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black.withOpacity(0.4),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                        contentsBuilder: (context, index) => Card(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: (title[index] != 'Jadwal Pengambilan E-KTP')
                                ? Text(
                                    title[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black.withOpacity(0.4),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                : Text(
                                    title[index],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Color.fromRGBO(31, 175, 176, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ),
                        connectorStyleBuilder: (context, index) =>
                            ConnectorStyle.dashedLine,
                        indicatorStyleBuilder: (context, index) =>
                            IndicatorStyle.outlined,
                        itemCount: title.length,
                        lastConnectorStyle: ConnectorStyle.dashedLine,
                        firstConnectorStyle: ConnectorStyle.solidLine,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardDetail extends StatelessWidget {
  const CardDetail({super.key});

  final String items1 = 'Pengajuan E-KTP Baru';

  final String items2 = 'Tanggal Pengajuan';

  final String items3 = 'Sabtu, 15 November 2023';

  final String items4 = 'Status Pengajuan';

  final String items5 = 'Sukses';

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 140,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width,
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  items1,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      items2,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      items3,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      items4,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(58, 184, 48, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          items5,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KontainerAtas extends StatelessWidget {
  const KontainerAtas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(31, 175, 176, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const SizedBox(width: 60),
              const Text(
                "Detail Pengajuan",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
