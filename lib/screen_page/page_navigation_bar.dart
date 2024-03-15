import 'package:flutter/material.dart';
import 'package:project2/screen_page/page_beranda.dart';
import 'package:project2/screen_page/page_column.dart';
import 'package:project2/screen_page/page_passing_data.dart';

class PageNavigationBar extends StatelessWidget {
  const PageNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Page Navigation Bar'),
      ),

      //drawer untuk menu samping
      drawer: SizedBox(
        width: 250,
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Windy Anggreni'),
                accountEmail: Text('windyanggreni09@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  radius: 55,
                  child: Icon(
                    Icons.person,
                    color: Colors.green,
                    size: 65,
                  ),
                ),
              ),
              ListTile(
                //untuk di klik itemnya
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageRow()));
                },
                title: Text("Row Widget"),
              ),
              Divider(),
              ListTile(
                title: Text("Column Widget"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageColumn()));
                },
              ),
              Divider(),
              ListTile(
                title: Text("Row & Column"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageColumnRow()));
                },
              ),
              Divider(),
              ListTile(
                title: Text("List Horizontal"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PageListHorizontal()));
                },
              ),
              Divider(),
              ListTile(
                title: Text("Passing Data"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PagePassingData()));
                },
              ),
              Divider(),
              ListTile(
                title: Text("Page Login"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PageLogin()));
                },
              ),
            ],
          ),
        ),
      ),

      body: Center(
        child: MaterialButton(
          onPressed: () {
            //back ke page sebelumnya
            Navigator.pop(context);
          },
          child: Text('Back'),
        ),
      ),
    );
  }
}

class PageRow extends StatelessWidget {
  const PageRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Page Row'),
      ),

      //Row, Column, List
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.add_business_sharp),
            Icon(Icons.person),
            Icon(
              Icons.add_call,
              color: Colors.orange,
              size: 64,
            ),
          ],
        ),
      ),
    );
  }
}
