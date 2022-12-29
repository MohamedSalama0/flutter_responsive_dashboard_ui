import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/size_config.dart';
import '../../../style/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // const Color.fromARGB(255, 18, 26, 44)
        // width: size.width,
        width: double.infinity,
        height: SizeConfig.screenHeight,
        decoration: const BoxDecoration(color: AppColors.secondaryBg),
        // padding: EdgeInsets.only(top: getResponsiveScreenHeight(15)),
    
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                  child: Image.asset('assets/images/logo.png')),
              DrwaerListTile(
                svgSrc: 'assets/icons/home.svg',
                onTap: () {},
                title: 'Home',
              ),
              DrwaerListTile(
                svgSrc: 'assets/icons/pie-chart.svg',
                onTap: () {},
                title: 'Dashboard',
              ),
              DrwaerListTile(
                svgSrc: 'assets/icons/clipboard.svg',
                onTap: () {},
                title: 'Clipboard',
              ),
              DrwaerListTile(
                svgSrc: 'assets/icons/credit-card.svg',
                onTap: () {},
                title: 'Cards',
              ),
              DrwaerListTile(
                svgSrc: 'assets/icons/trophy.svg',
                onTap: () {},
                title: 'Trophy',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrwaerListTile extends StatelessWidget {
  const DrwaerListTile({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String svgSrc, title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      hoverColor: Colors.black,
      leading: SvgPicture.asset(
        svgSrc,
        height: 14,
      ),
      horizontalTitleGap: 0.0,
      title: Text(
        title,
        style: const TextStyle(fontSize: 15, color: Colors.black87),
      ),
    );
  }
}
