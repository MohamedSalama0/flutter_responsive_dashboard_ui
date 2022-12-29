




//
// Complete By M.salama in 29 Dec 2022 9:00 AM
//



import 'package:flutter/material.dart';
import 'package:simple_flutter_web/config/responsive.dart';
import 'package:simple_flutter_web/config/size_config.dart';
import 'package:simple_flutter_web/screens/dashboard/dashboard_screen.dart';

import '../dashboard/component/header.dart';
import 'component/side_menu.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
       key:scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          children: [
            if(Responsive.isDesktop(context))
             const Expanded(
              child: SideMenu(),
            ),
             const Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
            // Expanded(
            //   flex: 3,
            //   child: Container(
            //     color: Colors.red,
            //   ),
            // )
            //   child: Container(
            //     color: Colors.blue,
            //     // width: size.width,
            //     height: size.height,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
