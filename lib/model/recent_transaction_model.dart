class RecentTransactionData {
  final String? icon, title, date, amount;

  RecentTransactionData({this.icon, this.title, this.date, this.amount});
}

List demoRecentTransaction = [
  RecentTransactionData(
    icon: "assets/icons/bank.svg",
    title: "Bank",
    date: "01-03-2021",
    amount: "\$120",
  ),
  RecentTransactionData(
    icon: "assets/icons/credit-card.svg",
    title: "Credit Card",
    date: "27-02-2021",
    amount: "\$899",
  ),
  RecentTransactionData(
    icon: "assets/icons/document.svg",
    title: "Website",
    date: "23-02-2021",
    amount: "\$2500",
  ),
  RecentTransactionData(
    icon: "assets/icons/bank.svg",
    title: "Foriegn Bank",
    date: "21-02-2021",
    amount: "\$1300",
  ),
  RecentTransactionData(
    icon: "assets/icons/transfer.svg",
    title: "Transfer via card",
    date: "23-02-2021",
    amount: "\$120",
  ),
  RecentTransactionData(
    icon: "assets/icons/credit-card.svg",
    title: "Credit Card",
    date: "25-02-2021",
    amount: "\$250",
  ),
  RecentTransactionData(
    icon: "assets/icons/trophy.svg",
    title: "Subscription",
    date: "25-02-2021",
    amount: "\$499",
  ),
];
