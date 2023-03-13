import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crafity/application/bloc/blocs.dart';
import 'package:crafity/interface/features/appbar_web/profile_bar_commponent.dart';

import 'package:crafity/interface/features/footer_web.dart';
import 'package:crafity/interface/features/widgets.dart';
import 'package:crafity/interface/screen/home/widgets/widgets.dart';
import 'package:crafity/interface/screen/login/login_page.dart';

class HomePageBody extends StatefulWidget {
  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      endDrawer: Drawer(
        child: NotifApp(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                ClipPath(
                  clipper: TopBgClipper(),
                  child: Container(
                    width: size.width,
                    height: size.height * .2,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF532640), Color(0xFFC84C6E)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: NavBar(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/logo-path.png'),
                  width: 330,
                  filterQuality: FilterQuality.high,
                ),
                SizedBox(
                  width: 385,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Let's Pick Your Favorite Cosmetic to Consume and Build Own Store",
                        style: TextStyle(
                          fontSize: 27,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Perfume is more varied, every country have perfume that uniquie. Lorem ipsum dolor sit'
                        'amet consectetur adipisicing elit. Exercitationem tempore impedit autem consectetur qui amet.'
                        'Perfume is more varied, every country have perfume that uniquie. Lorem ipsum dolor sit'
                        'amet consectetur adipisicing elit. Exercitationem tempore impedit autem consectetur qui amet.'
                        'Exercitationem tempore impedit autem consectetur qui amet',
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Stack(
              children: [
                Container(
                  width: 82,
                  height: 82,
                  decoration: BoxDecoration(
                    color: Color(0xFFF9F9F9),
                  ),
                ),
                Container(
                  width: 82,
                  height: 82,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFF24A78),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                Container(
                  width: 82,
                  height: 82,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFA74D76), Color(0xFF422163)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    backgroundBlendMode: BlendMode.color,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: HomeFeatureWidget(),
                ),
                Flexible(
                  flex: 2,
                  child: Image(
                    image: AssetImage('assets/perfume15.png'),
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ],
            ),
            SizedBox(height: 70),
            Partnership(),
            SizedBox(height: 70),
            Footer(),
          ],
        ),
      ),
    );
  }

  void _openLogin() {
    showDialog(
      context: context,
      builder: (_) => LoginPage(),
    ).whenComplete(
      () => BlocProvider.of<UserActionBloc>(context).add(
        SelectUserRole(role: 'EmailPasswordSignIn'),
      ),
    );
  }
}
