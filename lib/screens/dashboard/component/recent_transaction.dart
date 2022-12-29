import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_flutter_web/model/recent_transaction_model.dart';
import 'package:simple_flutter_web/style/colors.dart';

import '../../../config/size_config.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: AppColors.secondaryBg,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Transaction",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              columns: const [
                DataColumn(
                  label: Text("File Name"),
                ),
                DataColumn(
                  label: Text("Date"),
                ),
                DataColumn(
                  label: Text("Amount"),
                ),
              ],
              rows: List.generate(
                demoRecentTransaction.length,
                (index) => recentFileDataRow(demoRecentTransaction[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentTransactionData fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 23,
              width: 23,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                fileInfo.title!,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date!)),
      DataCell(Text(
        fileInfo.amount!,
        style: const TextStyle(fontWeight: FontWeight.w600),
      )),
    ],
  );
}
