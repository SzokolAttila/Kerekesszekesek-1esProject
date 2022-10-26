import 'package:emberijoginyilatkozatosappproject/main.dart';
import 'package:emberijoginyilatkozatosappproject/screens/apps/home.dart';
import 'package:emberijoginyilatkozatosappproject/screens/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/constants.dart';
import 'package:emberijoginyilatkozatosappproject/screens/auth/register.dart';
import 'package:emberijoginyilatkozatosappproject/screens/apps/rolunk.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:emberijoginyilatkozatosappproject/screens/welcome/welcome_screen.dart';
import 'package:emberijoginyilatkozatosappproject/screens/subpages/nineteenthpage.dart';
import 'package:emberijoginyilatkozatosappproject/screens/quiz_screen.dart';
final _userEmailController = TextEditingController();
bool logOutVisible = false;

// ignore: use_key_in_widget_constructors
class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();


}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    if (FocusScope.of(context).hasFocus) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
    if (FocusScope.of(context).hasFocus == false) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
    return Drawer(
      backgroundColor: bgColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Hello, felhasználó"),
            accountEmail: Text('Köszöntjük az Applikációban!'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(
                  image:
                      AssetImage('lib/assets/images/default_picture_new.png'),
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image:
                      AssetImage('lib/assets/images/background_default.webp'),
                  fit: BoxFit.cover),
            ),
          ),

          const Divider(
            color: Colors.grey,
          ),
          Title(
            color: red,
            child: const Text(
              'Oldalak',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.grey),
            ),
            iconColor: Colors.lightBlue,
            // ignore: avoid_returning_null_for_void
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomeScreen(),
                )),
          ),
          ListTile(
            leading: const Icon(Icons.newspaper_outlined),
            title: const Text(
              'Aloldalak',
              style: TextStyle(color: Colors.grey),
            ),
            iconColor: Colors.lightBlue,
            // ignore: avoid_returning_null_for_void
            onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Subpage19Screen(),
            )),
          ),
          ListTile(
            leading: const Icon(Icons.quiz_sharp),
            title: const Text(
              'Quiz',
              style: TextStyle(color: Colors.grey),
            ),
            iconColor: Colors.lightBlue,
            // ignore: avoid_returning_null_for_void
            onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => QuizScreen(),
            )),
          ),
          ListTile(
            leading: const Icon(Icons.people_alt),
            title: const Text(
              'Készítőkről',
              style: TextStyle(color: Colors.grey),
            ),
            iconColor: Colors.lightBlue,
            // ignore: avoid_returning_null_for_void
            onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => RolunkScreen(),
            )),
          ),

          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              'Logout',
              style: TextStyle(color: Colors.grey),
            ),
            iconColor: red,
            // ignore: avoid_returning_null_for_void
            onTap: () {
              setState(() {
                logOutVisible = true;
              });
              Future.delayed(
                const Duration(milliseconds: 1500),
                () => {
                  context.read<AuthenticationService>().signOut(),
                },
              );
            },
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Visibility(
                visible: logOutVisible,
                child: const CircularProgressIndicator(
                  color: Colors.lightBlue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
