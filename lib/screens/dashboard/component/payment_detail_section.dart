import 'package:flutter/material.dart';

import 'paymentListTile.dart';
import '../../../config/size_config.dart';
import '../../../data.dart';
import '../../../style/colors.dart';

class PaymentDetailsSection extends StatelessWidget {
  const PaymentDetailsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.secondaryBg,
      ),
      height: SizeConfig.screenHeight,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Image.asset('assets/images/card.png'),
              const SizedBox(height: defaultPadding),
              const Text(
                'Recent Activities',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Text(
                '12 Dec 2022',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: defaultPadding),
              Column(
                children: List.generate(
                  recentActivities.length,
                  (index) => PaymentListTile(
                    icon: recentActivities[index]["icon"],
                    label: recentActivities[index]["label"],
                    amount: recentActivities[index]["amount"],
                  ),
                ),
              ),
              const SizedBox(height: defaultPadding),
              const Text(
                'Upcoming Payment',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Text(
                '12 Dec 2022',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: defaultPadding),
              Column(
                children: List.generate(
                  upcomingPayments.length,
                  (index) => PaymentListTile(
                    icon: upcomingPayments[index]["icon"],
                    label: upcomingPayments[index]["label"],
                    amount: upcomingPayments[index]["amount"],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
