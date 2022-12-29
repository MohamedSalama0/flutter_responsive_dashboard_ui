import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/responsive.dart';
import '../../../config/size_config.dart';
import '../../../style/colors.dart';

class InfoCard extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;

  const InfoCard(
      {required this.icon, required this.label, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: double.infinity,
        // constraints: BoxConstraints(
        //     minWidth: Responsive.isDesktop(context)
        //         ? 150
        //         : SizeConfig.screenWidth! / 2 - 100),
        // constraints: BoxConstraints(minHeight: 10),

        // width: 170,

        padding: EdgeInsets.only(
          top: 10,
          bottom: 1,
          left: defaultPadding,
          right: 1,
          // right: Responsive.isMobile(context) ? 20 : 40,
        ),

        // padding: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.white,
        ),
        child: SizeConfig.screenWidth! < 700
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        icon,
                        width: SizeConfig.screenWidth! < 550 ? 28 : 35,
                      ),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      Text(
                        label,
                        maxLines: 2,
                        style: const TextStyle(
                          // fontSize: 16,
                          fontSize: 16,
                          color: AppColors.secondary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    amount,
                    style: const TextStyle(
                      // fontSize: 10,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(icon, width: 35),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    label,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 16,
                      // fontSize: 2,
                      color: AppColors.secondary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    amount,
                    style: const TextStyle(
                      // fontSize: 10,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ));
  }
}
