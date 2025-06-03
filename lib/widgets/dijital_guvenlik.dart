import 'package:flutter/material.dart';

class DijitalGuvenlik extends StatelessWidget {
  const DijitalGuvenlik({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dijital Güvenlik')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dijital Güvenlik',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Dijital güvenlik, kişisel verilerinizi koruma ve kötü niyetli '
                    'saldırılara karşı önlem alma yöntemlerini içerir. İnternette '
                    'güvenli kalmanın yolları arasında güçlü şifre kullanma, '
                    'iki faktörlü kimlik doğrulama, bilinmeyen bağlantılara tıklamama '
                    've düzenli güncellemeler yapma gibi önlemler bulunmaktadır.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20), // Daha fazla alan ekleyin
              // Diğer içerikleri eklemek için aşağıdaki alanı kullanabilirsiniz
              Text(
                'Öneriler:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '1. Güçlü şifreler kullanın.\n'
                    '2. İki faktörlü kimlik doğrulama yapın.\n'
                    '3. Bilinmeyen bağlantılara tıklamayın.\n'
                    '4. Yazılımlarınızı güncel tutun.',
                style: TextStyle(fontSize: 16),
              ),
              // İstediğiniz kadar içerik ekleyin
            ],
          ),
        ),
      ),
    );
  }
}
