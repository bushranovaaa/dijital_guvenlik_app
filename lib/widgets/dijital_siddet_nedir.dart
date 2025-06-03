import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'dart:convert';
import 'custom_button.dart'; // CustomButton bileşenini içe aktar

// JSON verisini yükleyen fonksiyon
Future<String> loadJsonData() async {
  var jsonText = await rootBundle.rootBundle.loadString('assets/data/dijital_guvenlik.json');
  return jsonText;
}

class DijitalSiddetNedir extends StatelessWidget {
  const DijitalSiddetNedir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dijital Şiddet Nedir?'),
      ),
      body: FutureBuilder(
        future: loadJsonData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // JSON verisini parse et
            var data = json.decode(snapshot.data as String);
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Dijital Şiddet',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      data['description'], // JSON'dan açıklama al
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      text: 'Detaylar',
                      onTap: () {
                        // Detaylar sayfasına yönlendirme
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetaySayfasi(
                              detail: data['details'], // JSON'dan detayları gönder
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

// Detay Sayfası
class DetaySayfasi extends StatelessWidget {
  final String detail;

  const DetaySayfasi({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detaylar')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            detail, // Detayları göster
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
