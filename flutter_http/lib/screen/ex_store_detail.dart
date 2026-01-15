import 'package:flutter/material.dart';
import 'package:flutter_http/model/store_model.dart';

class ExStoreDetail extends StatelessWidget {
  const ExStoreDetail({super.key, required this.storeModel});
  final StoreModel storeModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(storeModel.title),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.network(storeModel.image, height: 200, fit: BoxFit.contain),
                ),
                const SizedBox(height: 20),
                Text(
                  storeModel.title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),

                Text(
                  "\$${storeModel.price}",
                  style: const TextStyle(fontSize: 18, color: Colors.green),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    Text('${storeModel.rating.rate}(${storeModel.rating.count})'),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  storeModel.description,
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 20),

              ],
            )
        )
    );
  }
}
