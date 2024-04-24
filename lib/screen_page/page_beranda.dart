import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:project2/screen_page/page_bottom_navigation.dart';
import 'package:project2/screen_page/page_list_berita.dart';
import 'package:project2/screen_page/page_list_users.dart';
import 'package:project2/screen_page/page_navigation_bar.dart';
import 'package:project2/screen_page/page_register_api.dart';
import 'package:project2/screen_page/page_search.dart';

class PageBeranda extends StatelessWidget {
  const PageBeranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Project MI2C'),
        centerTitle: true, //untuk letak ditengah
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'gambar/poli.png',
              fit: BoxFit.contain,
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 8,
            ),
            const Image(
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              fit: BoxFit.contain,
              height: 200,
              width: 200,
            ),
            Text('Program Studi: Manajemen Informatika 2C'),
            Text('Kampus Politeknik Negeri Padang'),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                //tambahkan code toast
                showToast(
                  'Pindah ke Page Navigation Drawer',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  toastHorizontalMargin: 28,
                  fullWidth: true,
                );

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageNavigationBar()));
              },
              child: Text(
                'Page Navigation Utama',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              color: Colors.green,
              textColor: Colors.white,
            ),

            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                //tambahkan code toast
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.slideFromTopFade,
                    reverseAnimation: StyledToastAnimation.slideToTopFade,
                    position: StyledToastPosition(
                        align: Alignment.topCenter, offset: 0.0),
                    startOffset: Offset(0.0, -3.0),
                    reverseEndOffset: Offset(0.0, -3.0),
                    duration: Duration(seconds: 4),
                    //Animation duration   animDuration * 2 <= duration
                    animDuration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    reverseCurve: Curves.fastOutSlowIn);
              },
              child: Text(
                'Toast Atas',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              color: Colors.green,
              textColor: Colors.white,
            ),

            //snackbar
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("ini adalah pesan snackbar"),
                    backgroundColor: Colors.orange,
                  ),
                );
              },
              child: Text(
                'Snackbar',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              color: Colors.lightGreen,
              textColor: Colors.white,
            ),

            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                //tambahkan code toast
                showToast(
                  'Pindah ke Page Navigation',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  toastHorizontalMargin: 28,
                  fullWidth: true,
                );

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageBottomNavigationBar ()));
              },
              child: Text(
                'Buttom Navigation Bar',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              color: Colors.green,
              textColor: Colors.white,
            ),

            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                //tambahkan code toast
                showToast(
                  'Page Search List',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  toastHorizontalMargin: 28,
                  fullWidth: true,
                );

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageListUsers ()));
              },
              child: Text(
                'Page List Users',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              color: Colors.green,
              textColor: Colors.white,
            ),

            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                //tambahkan code toast
                showToast(
                  'Page Search List',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  toastHorizontalMargin: 28,
                  fullWidth: true,
                );

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageListBerita ()));
              },
              child: Text(
                'Page List Berita',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              color: Colors.green,
              textColor: Colors.white,
            ),

            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                //tambahkan code toast
                showToast(
                  'Page Search List',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  toastHorizontalMargin: 28,
                  fullWidth: true,
                );

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageRegisterApi ()));
              },
              child: Text(
                'Page Register API',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              color: Colors.green,
              textColor: Colors.white,
            ),
          ],
        ),
      )),
    );
  }
}



