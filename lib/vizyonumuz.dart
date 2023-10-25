import 'package:flutter/material.dart';

class VizyonlarSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: const Text('Vizyonumuz', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.green.shade200,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'images/assets/hey.jpg',
              width: double.infinity,
            ),
            const SizedBox(height: 20),
            const Text(
              "Uygulamamız, Türkiye'nin geleceğine yönelik parlak "
                  "bir vizyonu benimsemekteyiz. İlk olarak, uygulamamız atık azaltma ve"
                  " kaynakların daha verimli kullanılması konusunda toplumsal bilinci "
                  "artırmayı hedefler. Ayrıca, geri dönüşüm kültürünün yaygınlaştırılması "
                  "ve yeşil ekonomiye katkıda bulunulması için gerekli araçları sunar. "
                  "Türkiye Geri Dönüşüm Uygulamamız, çevre bilincini artırmak, "
                  "istihdamı artırmak ve Türkiye'nin sürdürülebilir bir geleceğe doğru yol "
                  "almasına katkıda bulunmak için en iyi uygulamalara erişim sağlar.",
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            const Text(
              "Bu vizyon, Türkiye'nin çevresel sürdürülebilirlik, ekonomik büyüme ve "
                  "toplumsal refahını güçlendirmek için geri dönüşümün gücünü vurgular. "
                  "Türkiye, daha temiz ve yeşil bir geleceğe doğru adım atarak hem kendi"
                  " vatandaşlarının hem de gezegenimizin refahını artırma taahhüdünü "
                  "yansıtmaktayız.",
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
