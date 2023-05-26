import 'package:flutter/material.dart';
import 'package:prueba_norman/models/option_model.dart';

List<OptionModel> options = [
  OptionModel('Transferir', Icons.compare_arrows_outlined),
  OptionModel('Recargar', Icons.upload_outlined),
  OptionModel('Pedir', Icons.download_outlined),
  OptionModel('Retirar', Icons.request_quote_outlined),
  OptionModel('Pagar', Icons.payments_outlined),
  OptionModel('QR', Icons.qr_code_outlined, isNew: true),
  OptionModel('Datáfono', Icons.phone_iphone_outlined),
  OptionModel('Servicios', Icons.category_outlined),
];

class MyOptions extends StatelessWidget {
  const MyOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.count(
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 16.0,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        children: [
          ...options.map((e) {
            return _Item(option: e);
          })
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    super.key,
    required this.option,
  });

  final OptionModel option;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
        border: Border.all(
          color: Colors.black26,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            option.icon,
            color: Colors.green,
            size: 40.0,
          ),
          option.isNew
              ? Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4.0,
                    vertical: 2.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  child: const Text(
                    'Nuevo',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    option.title,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15.0,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
