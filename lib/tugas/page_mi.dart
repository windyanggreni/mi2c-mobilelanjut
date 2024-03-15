import 'package:flutter/material.dart';

class PageMI extends StatelessWidget {
  const PageMI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Text(
              'Manajemen Informatika',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.white)),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Deskripsi dan Profil',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Program Studi Manajemen Informatika (Kampus Kab. Pelalawan) merupakan salah satu Program Studi Diluar Kampus Utama (PSDKU) Politeknik Negeri Padang yang memiliki sejarah dan keterkaitan erat dengan berdirinya Akademi Komunitas di Daerah Pelalawan. Berangkat dari SK Pendirian Akademi Komunitas Nomor : 179/P/2013 Tanggal 26 September 2013, Program Studi Diluar Domisili (PDD) Kabupaten Pelalawan di awal berdirinya memiliki Program Studi D2 Elektro Industri dan D2 Manajemen Informatika.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  //back ke page sebelumnya
                  Navigator.pop(context);
                },
                child: Text('Back'),
                color: Colors.deepOrange,
                textColor: Colors.white,
              ),
            ),
          ],
        )));
  }
}
