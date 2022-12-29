import 'package:flutter/material.dart';

import '../../../config/size_config.dart';
import 'info_card.dart';

class TransactionCards extends StatelessWidget {
  const TransactionCards({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(defaultPadding),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: infoCardData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (BuildContext context, int index) => InfoCard(
        icon: infoCardData[index]['icon'],
        label: infoCardData[index]['label'],
        amount: infoCardData[index]['amount'],
      ),
    );
  }
}

List infoCardData = const [
  {
    'icon': 'assets/icons/credit-card.svg',
    'label': 'Credit card\nnumber',
    'amount': "\$2400",
  },
  {
    "icon": 'assets/icons/transfer.svg',
    "label": 'Transfer card \nnumber',
    'amount': "\$1800",
  },
  {
    'icon': 'assets/icons/bank.svg',
    'label': 'Transfer \nvia bank',
    'amount': "\$1300",
  },
  {
    'icon': 'assets/icons/invoice.svg',
    'label': 'Transfer \n mony',
    'amount': "\$1500",
  }
];
 


    // Wrap(
    //   runSpacing: 15,
    //   spacing: 15,
    //   alignment: WrapAlignment.spaceBetween,
    //   children: const [
    //     InfoCard(
    //       icon: 'assets/icons/credit-card.svg',
    //       label: 'Transfer via \ncard number',
    //       amount: "\$2400",
    //     ),
    //     InfoCard(
    //       icon: 'assets/icons/transfer.svg',
    //       label: 'Transfer \ncard number',
    //       amount: "\$1800",
    //     ),
    //     InfoCard(
    //       icon: 'assets/icons/bank.svg',
    //       label: 'Transfer \nvia bank',
    //       amount: "\$1300",
    //     ),
    //     InfoCard(
    //       icon: 'assets/icons/invoice.svg',
    //       label: 'Transfer to \nanother bank',
    //       amount: "\$1500",
    //     ),
    //   ],
    // );
  
