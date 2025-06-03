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
      body: FutureBuilder<String>(
        future: loadJsonData(),
        builder: (context, snapshot) {
          // Veriler başarıyla yüklendiğinde gösterilecek içerik
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              var data = json.decode(snapshot.data!);
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
                              builder: (context) => DetaySayfasi(data: data['details']),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return const Center(child: Text('Veri yüklenirken bir hata oluştu.'));
            }
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const Center(child: Text('Veri bulunamadı.'));
          }
        },
      ),
    );
  }
}

class DetaySayfasi extends StatelessWidget {
  final String data;  // Detay verisini almak için parametre

  const DetaySayfasi({super.key, required this.data});  // Detay verisini alıyoruz

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detaylar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            data, // Detayları burada gösteriyoruz
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
