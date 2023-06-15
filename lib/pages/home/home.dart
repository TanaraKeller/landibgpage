import 'package:flutter/material.dart';
import '../../widgets/navbar_desktop.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> key = GlobalKey();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screeSize = MediaQuery.of(context).size;
    return Scaffold(
      key: key,
      appBar: PreferredSize(
        preferredSize: Size(
          screeSize.width,
          1000,
        ),
        child:
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            image: const DecorationImage(
              image: AssetImage('assets/orar.png'),
              fit: BoxFit.cover,
            ),
          ),
          child:
            const NavBar(),
        ),
      ),
    );
  }
}
