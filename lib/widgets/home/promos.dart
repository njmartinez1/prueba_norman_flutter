import 'package:flutter/material.dart';
import 'package:prueba_norman/models/promo_model.dart';

List<PromoModel> promos = [
  PromoModel(
    'Abre tu inversión',
    'Nos encargamos que tu dinero trabaje para ti',
    Colors.purple[200],
    Colors.white,
  ),
  PromoModel(
    'Abre tu inversión',
    'Nos encargamos que tu dinero trabaje para ti',
    Colors.blue,
    Colors.white,
  ),
  PromoModel(
    'Abre tu inversión',
    'Nos encargamos que tu dinero trabaje para ti',
    Colors.purple,
    Colors.white,
  ),
];

class Promos extends StatelessWidget {
  const Promos({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: promos.length,
        itemBuilder: (context, index) {
          final promo = promos[index];
          return _PromoItem(promo: promo);
        },
      ),
    );
  }
}

class _PromoItem extends StatelessWidget {
  const _PromoItem({super.key, required this.promo});

  final PromoModel promo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        color: promo.bgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            promo.title,
            style: TextStyle(
              color: promo.txtColor,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            promo.description,
            style: TextStyle(
              color: promo.txtColor,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
