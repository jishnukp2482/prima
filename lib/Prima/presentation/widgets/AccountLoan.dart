import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task_mgmt/Prima/domain/entities/details_modal.dart';

import '../themes/appcolors.dart';
import 'details.dart';

class AccountLoan extends StatefulWidget {
  const AccountLoan({super.key});

  @override
  State<AccountLoan> createState() => _AccountLoanState();
}

class _AccountLoanState extends State<AccountLoan> {
  late List<DetailsModal> loandetails;
  @override
  void initState() {
    loandetails = [
      DetailsModal(title: "100000.00"),
    ];
    super.initState();
  }

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return LoanItems(model: loandetails[index]);
      },
    );
  }
}

class LoanItems extends StatelessWidget {
  const LoanItems({super.key, required this.model});
  final DetailsModal model;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/cardBg.jpg"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.5),
                  offset: Offset(0, 5),
                  blurRadius: 40,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Details(
                          label: "Balance XAF",
                          title: model.title,
                          conditon: false),
                      Container(),
                      Details(
                          label: "Overdue Amount XAF",
                          title: model.title,
                          conditon: true)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(color: AppColors.grey),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Details(
                          label: "Overdue Interest XAF",
                          title: model.title,
                          conditon: false),
                      // Container(),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Details(
                            label: "Interest @10.0%",
                            title: model.title,
                            conditon: true),
                      ),
                      SizedBox()
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(color: AppColors.grey),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Details(
                          label: "Loan ID",
                          title: model.title,
                          conditon: false),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Details(
                            label: "Loan Type",
                            title: model.title,
                            conditon: true),
                      ),
                      SizedBox()
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(color: AppColors.grey),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Details(
                          label: "Loan Branch",
                          title: model.title,
                          conditon: false),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Details(
                            label: "Surety",
                            title: model.title,
                            conditon: true),
                      ),
                      Container()
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )));
  }
}
