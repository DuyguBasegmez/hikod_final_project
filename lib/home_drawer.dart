import 'package:flutter/material.dart';
import 'package:hikodfinalproject/vizyonumuz.dart';
import 'login_page.dart';
import 'registration.dart';
import 'registration_list.dart';

class HomeDrawer extends StatelessWidget {
  final String email;

  HomeDrawer({required this.email});

  void navigateToGirisSayfasi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.green.shade50,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("Hesap: $email", style: TextStyle(color: Colors.black, fontSize: 20.0),),
            accountName: null,
            decoration: BoxDecoration(
              color: Colors.green.shade300,
            ),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                size: 70.0,
                color: Colors.white,
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.star_border_rounded, size: 30.0),
            title: Text('Vizyonumuz', style: TextStyle(fontSize: 17.0)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VizyonlarSayfasi(),
                ),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.new_label, size: 30.0),
            title: Text('Yeni kayıt oluştur', style: TextStyle(fontSize: 17.0)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GeriDonusumScreen(),
                ),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.schedule, size: 30.0),
            title: Text('Eski Kayıtlar', style: TextStyle(fontSize: 17.0)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegistrationListScreen(),
                ),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.exit_to_app, size: 30.0),
            title: Text('Çıkış Yap', style: TextStyle(fontSize: 17.0)),
            onTap: () {
              navigateToGirisSayfasi(context);
            },
          ),
        ],
      ),
    );
  }
}
