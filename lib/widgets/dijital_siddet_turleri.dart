import 'package:flutter/material.dart';

class DijitalSiddetTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dijital Şiddet Türleri')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Dijital Şiddet Türleri',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Dijital şiddet birçok şekilde ortaya çıkabilir. Bunlar arasında: \n'
                    '- Siber zorbalık\n'
                    '- İzinsiz paylaşım\n'
                    '- Dışlama\n'
                    '- Taciz\n'
                    'gibi durumlar yer alır.',
                style: TextStyle(fontSize: 16),
              ),
              // Daha fazla içerik ekleyebilirsin
            ],
          ),
        ),
      ),
    );
  }
}
