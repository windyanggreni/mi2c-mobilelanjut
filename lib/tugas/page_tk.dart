import 'package:flutter/material.dart';

class PageTK extends StatelessWidget {
  const PageTK({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Text(
              'Teknik Komputer',
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
              'Deskripsi',
              style: TextStyle(
                  color: Colors.deepOrange, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Program Studi di Luar Kampus Utama (PSDKU) adalah Program Studi yang diselenggarakan di kabupaten/kota/kota administratif yang tidak berbatasan langsung dengan Kampus Utama. ProgramStudi Teknik Komputer di Kabupaten Solok Selatan merupakan jenjang program studi Diploma 3 (D3) dengan Level KKNI (Level 5) berdiri tanggal 14 April 2021 sesuai dengan Surat Keputusan (SK) penyelenggaraan program studi nomor 062/D/OT/2021. Tujuan didirikannya PSDKU adalah meningkatkan akses, pemerataan, mutu, relevansi pendidikan tinggi di seluruh wilayah Indonesia dan untuk meningkatkan mutu, dan relevansi penelitian ilmiah serta pengabdian kepada masyarakat untuk mendukung Pembangunan Nasional',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(
              height: 60,
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
