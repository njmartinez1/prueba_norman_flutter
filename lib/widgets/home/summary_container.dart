import 'package:flutter/material.dart';
import 'package:prueba_norman/widgets/home/amount_detail.dart';
import 'package:prueba_norman/widgets/home/toggle_amounts.dart';
import 'package:styled_divider/styled_divider.dart';

class SummaryContainer extends StatefulWidget {
  const SummaryContainer({super.key});

  @override
  State<SummaryContainer> createState() => _SummaryContainerState();
}

class _SummaryContainerState extends State<SummaryContainer> {
  bool amountsVisible = true;

  toggleAmounts() {
    amountsVisible = !amountsVisible;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ToggleAmounts(
          amountsVisible: amountsVisible,
          onPressed: toggleAmounts,
        ),
        const SizedBox(height: 8.0),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 10.0,
                color: Colors.black12,
                offset: Offset(0.0, 5.0),
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'Tienes disponible',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          amountsVisible ? '\$0' : '\$ -',
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const StyledDivider(
                    height: 0.0,
                    thickness: 2.0,
                    indent: 2.0,
                    lineStyle: DividerLineStyle.dashed,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AmountDetail(
                          amount: amountsVisible ? '0' : '-',
                          color: Colors.green[300],
                          icon: Icons.wallet_outlined,
                          title: 'Bolsillos',
                        ),
                        AmountDetail(
                          amount: amountsVisible ? '0' : '-',
                          color: Colors.purple[300],
                          icon: Icons.flag_outlined,
                          title: 'Metas',
                        ),
                        AmountDetail(
                          amount: amountsVisible ? '0' : '-',
                          color: Colors.cyan[300],
                          icon: Icons.inbox_outlined,
                          title: 'Baúl',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Positioned(
                top: 36.0,
                right: 20.0,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
