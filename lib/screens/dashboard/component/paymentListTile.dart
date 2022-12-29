import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../style/colors.dart';

class PaymentListTile extends StatelessWidget {
  final String? icon;
  final String? label;
  final String? amount;

  const PaymentListTile(
      {super.key,
      required this.icon,
      required this.label,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0, right: 10),
      visualDensity: VisualDensity.standard,
      leading: Container(
          width: 50,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SvgPicture.asset(
            icon!,
            width: 20,
          )),
      title: Text(
        label!,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Successfully',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.primary,
            ),
          ),
          Text(
            amount!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
      onTap: () {
        print('tap');
      },
      selected: true,
    );
  }
}
