import 'package:flutter/material.dart';
import 'package:prueba_norman/models/product_model.dart';
import 'package:prueba_norman/services/product_service.dart';
import 'package:prueba_norman/widgets/system_design/my_app_bar.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final ProductService _productService = ProductService();
  String? errorMessage;
  late List<ProductModel> products;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  void getProducts() async {
    setState(() => isLoading = true);
    final response = await _productService.getProducts();
    isLoading = false;
    if (response.error) {
      errorMessage = 'No se pudo obtener los productos';
    } else {
      products = parseProductList(response.data);
    }
    setState(() {});
  }

  List<ProductModel> parseProductList(dynamic jsonResp) {
    return jsonResp
        .map<ProductModel>((json) => ProductModel.fromJson(json))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: isLoading
            ? const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularProgressIndicator(
                      color: Colors.green,
                    ),
                    SizedBox(height: 16.0),
                    Text('Cargando productos...'),
                  ],
                ),
              )
            : errorMessage != null
                ? Center(
                    child: Text(errorMessage!),
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (ctx, idx) {
                        return _ProductCard(product: products[idx]);
                      },
                    ),
                  ),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  const _ProductCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom: 24.0),
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
      child: Row(
        children: [
          Image.network(
            product.image ?? '',
            width: 100,
            height: 100,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title ?? '',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '\$ ${product.price ?? 0}',
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  product.description ?? '',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
