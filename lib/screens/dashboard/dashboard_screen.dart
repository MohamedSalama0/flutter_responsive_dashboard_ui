// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_flutter_web/screens/dashboard/component/recent_transaction.dart';
import 'package:simple_flutter_web/style/colors.dart';
import '../../config/responsive.dart';
import 'component/header.dart';
import 'component/info_card.dart';
import '../../config/size_config.dart';
import 'component/payment_detail_section.dart';
import 'component/transaction_cards.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: SizeConfig.screenHeight,
        color: AppColors.barBg,
        child: SingleChildScrollView(
          primary: false,
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(),
              const SizedBox(height: defaultPadding),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: SizedBox(
                      height: SizeConfig.screenHeight,
                      width: SizeConfig.screenWidth,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Responsive(
                              smallMobile: TransactionCards(
                                childAspectRatio: 1.6,
                                crossAxisCount: 2,
                              ),
                              mobile: TransactionCards(
                                crossAxisCount: 2,
                                childAspectRatio: 2.1,
                                // childAspectRatio:
                                //     SizeConfig.screenWidth! < 650 ? 1.3 : 1,
                              ),
                              tablet: TransactionCards(
                                  // childAspectRatio: 0.6,
                                  childAspectRatio:
                                      SizeConfig.screenWidth! < 1100
                                          ? 0.8
                                          : 0.9),
                              desktop: TransactionCards(
                                childAspectRatio:
                                    SizeConfig.screenWidth! < 1400 ? 0.9 : 1,
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            const RecentTransaction(),
                            if (Responsive.isSmallMobile(context) &&
                                !Responsive.isMobile(context))
                              const SizedBox(
                                height: defaultPadding,
                              ),
                            if (Responsive.isSmallMobile(context) &&
                                !Responsive.isMobile(context))
                              const PaymentDetailsSection()
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (!Responsive.isSmallMobile(context) &&
                      !Responsive.isMobile(context))
                    const SizedBox(
                      width: defaultPadding,
                    ),
                  if (!Responsive.isSmallMobile(context) &&
                      !Responsive.isMobile(context))
                    const Expanded(
                      flex: 2,
                      child: PaymentDetailsSection(),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
