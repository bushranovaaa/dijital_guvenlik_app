```dart
import 'package:flutter/material.dart';
import 'info_screen.dart';
import 'emergency_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kadına Şiddetle Mücadele")),
      body: Center(
      child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text("Bilgilendirme Sayfası"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InfoScreen()),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Text("Acil Yardım"),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EmergencyScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        }
      }
