import 'package:flutter/material.dart';
import 'package:cobes_marketplace_vendor/features/transaction/controllers/transaction_controller.dart';
import 'package:cobes_marketplace_vendor/features/transaction/widgets/transaction_widget.dart';
import 'package:cobes_marketplace_vendor/utill/dimensions.dart';

class WalletTransactionListViewWidget extends StatelessWidget {
  final TransactionController? transactionProvider;
  const WalletTransactionListViewWidget({Key? key, this.transactionProvider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: transactionProvider!.transactionList!.length,
      itemBuilder: (context, index) => TransactionWidget(transactionModel: transactionProvider!.transactionList![index]),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(height: Dimensions.paddingSizeExtraSmall),
    );
  }
}
