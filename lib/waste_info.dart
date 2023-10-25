import 'package:flutter/material.dart';


class KagitInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text('Kağıt Geri Dönüşümü', style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
          width: 200,
          height: 50,
        ),
            Image.asset(
              'images/assets/kagitt.png',
              width: 300,
              height: 300,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kağıt',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Kağıdın geri dönüşümü ile kullanılan hammadde miktarında önemli oranda tasarruf sağlanması ve ekonomik değerinin yüksek olması nedeniyle önemlidir.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Neler kağıt atıktır?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '• Kitaplar\n• Defterler\n• Gazeteler\n• Kese Kağıtları\n• Not Kağıtları\n• Karton Koli\n• Mukavva\n• Kağıt / Karton Ambalaj',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '1 Ton Kağıt Ne Kazandırır?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('• 177 Kg Sera Gazı', style: TextStyle(fontSize: 16)),
                      Text('• 4100 kWh Enerji', style: TextStyle(fontSize: 16)),
                      Text('• 40% Enerji Tasarrufu', style: TextStyle(fontSize: 16)),
                      Text('• 17 Adet Kurtarılan Ağaç', style: TextStyle(fontSize: 16)),
                      Text('• 2.5 Depolama Alanı Kazanç', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





class PlastikInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text('Plastik Geri Dönüşümü', style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  // Add your image here
                  Image.asset(
                    'images/assets/plastikk.jpg',
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
              const Text(
                'Plastik',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Plastik, pek çok tüketici ürününün bir bileşeni olup, imalat sanayinin çıktı ve nihai ürünlerinin çoğunu oluşturur. Bununla birlikte, bütün plastikler aynı değildir ve bu, hepsinin aynı şekilde bertaraf edilip geri dönüştürülemeyeceği anlamına gelir.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Neler plastik atıktır?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '• Pet şişeler\n• Şişe kapakları\n• Su damacanaları\n• Ambalajlar\n• Naylon poşetler\n• Plastik kutular\n• Pet bardaklar\n• Temizlik malzemesi ambalajları\n• Kişisel bakım ürünleri ambalajları\n• Plastik oyuncaklar',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                '1 Ton Plastik Ne Kazandırır?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• 41 Kg Sera Gazı', style: TextStyle(fontSize: 16)),
                  Text('• 5774 kWh Enerji', style: TextStyle(fontSize: 16)),
                  Text('• 80% Enerji Tasarrufu', style: TextStyle(fontSize: 16)),
                  Text('• 2.3 Depolama Alanı Kazanç', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class CamInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text('Cam Geri Dönüşümü', style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Image.asset(
                    'images/assets/cam.jpg',
                    width: 300,
                    height: 300,
                  ),
                ],
              ),
              const Text(
                'Cam',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Cam, birçok farklı amaç için kullanılan kırılgan bir malzemedir. Camın geri dönüşümü, doğal kaynakları korumak ve enerji tasarrufu yapmak için önemlidir.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Neler cam atıktır?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '• Cam şişeler\n• Cam kavanozlar\n• Cam ambalajlar\n• Cam kaplar\n• Cam tabaklar\n• Cam pencere ve cam kapılar',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                '1 Ton Cam Ne Kazandırır?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• 122 Kg Sera Gazı', style: TextStyle(fontSize: 16)),
                  Text('• 41 Litre Su Tasarrufu', style: TextStyle(fontSize: 16)),
                  Text('• 10 Kg Hammadde Tasarrufu', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class MetalInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text('Metal Geri Dönüşümü', style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Image.asset(
                    'images/assets/metall.png',
                    width: 300,
                    height: 300,
                  ),
                ],
              ),
              const Text(
                'Metal',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Metal, yeryüzü tabakasını oluşturan çeşitli minerallerin işlenerek saflaştırılması sonucunda üretilir.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Neler metal atıktır?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '• Alüminyum içecek kutuları\n• Yağ ve salça tenekeleri\n• Konserve kutuları\n• Mutfak gereçleri (çatal, bıçak, tencere, tava, çaydanlık)\n• Alüminyum folyolar',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                '1 Ton Metal Ne Kazandırır?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• 1.3 Kg Hammadde Tasarrufu', style: TextStyle(fontSize: 16)),
                  Text('• 95 Kg Sera Gazı', style: TextStyle(fontSize: 16)),
                  Text('• 642 kWh Enerji Tasarrufu', style: TextStyle(fontSize: 16)),
                  Text('• 90% Enerji Tasarrufu', style: TextStyle(fontSize: 16)),
                  Text('• 3 Depolama Alanı Kazanç', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class OrganikInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text('Organik Atık Geri Dönüşümü', style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/assets/organik.jpg',
                width: 300,
                height: 300,
              ),
              const Text(
                'Organik Atık',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Organik içerikler, yaşamsal ve zirai faaliyetlerde önemli rol oynamaktadır. Bunun sonucunda hayvansal ve bitkisel bazlı atıklar meydana gelmektedir.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Neler organik atıktır?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '• Meyve sebze atıkları\n• Buğday, arpa, çavdar samanı',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AhsapInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text('Ahşap Geri Dönüşümü', style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/assets/ahsapp.jpg',
                width: 300,
                height: 300,
              ),
              const Text(
                'Ahşap',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Ağaçlardan edilen ahşap malzemeler, ev eşyaları, taşıma ve koruma amaçlı ambalaj ve yapı malzemesi olarak hayatın her alanında yaygın şekilde kullanılmaktadır.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Neler ahşap atıktır?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '• Evlerde kullanılan mobilya ve küçük ev eşyaları\n• Ambalaj olarak kullanılan palet ve kasalar\n• Yapı malzemesi ve ev eşyası üretiminden kaynaklı kırpıntı, parça, talaş halindeki tüm malzemeler',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BitkiselYagInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text('Bitkisel Atık Yağ Geri Dönüşümü', style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/assets/yag.png',
                width: 300,
                height: 300,
              ),
              const Text(
                'Bitkisel Atık Yağ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Bitkisel yağlar, zeytin, ayçiçeği, mısır, pamuk, soya, kanola ve aspir gibi yağlı bitki tohumlarından elde edilen yağların genel adıdır.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Neler bitkisel atık yağdır?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '• Kullanılmış kızartmalık yağlar\n• Son kullanma tarihi geçmiş katı ve sıvı yağlar',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ElektronikInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text('Elektronik Atık Geri Dönüşümü', style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/assets/elektronikk.jpg',
                width: 300,
                height: 300,
              ),
              const Text(
                'Elektronik Atık',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Elektronik eşyalar, ev, okul ve ofis gibi gündelik hayatın her alanında yaygın şekilde kullanılmaktadır. Gündelik işlerimizi kolaylaştırmaktadır.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Neler elektronik atıktır?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '• Bulaşık, çamaşır makinesi, buzdolabı\n• Elektrik süpürgesi, tost makinesi\n• Bilgisayarlar, telefonlar',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KompozitInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text('Kompozit Atık Geri Dönüşümü', style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/assets/kompozit.jpg',
                width: 300,
                height: 300,
              ),
              const Text(
                'Kompozit Atık',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Kâğıt ve plastik karışımı malzemeden üretilen kompozit ambalajlar meyve suyu ve süt ambalajı olarak yoğun olarak kullanılmakta olup aynı yoğunlukta atık olarak oluşmaktadır.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Neler kompozit atıktır?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '• Hazır çorba ambalajları\n• Karton süt ve meyve suyu kutuları\n• Çikolata ambalajları',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PilInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text('Atık Pil Geri Dönüşümü', style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/assets/pill.jpg',
                width: 300,
                height: 300,
              ),
              const Text(
                'Atık Pil',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Kimyasal enerjiyi elektrik enerjisine doğrudan dönüştürerek bünyesinde depolayan cihazlara pil denir. Kullanım ömrünü tamamlamış veya uğramış olduğu fiziksel hasar sonucu kullanılmayacak duruma gelmiş pillere “Atık Pil" denir.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Neler atık pildir?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '• Şarj edilemeyen piller (Alkalin, Lityum, Çinko)\n• Şarj edilebilen (sekonder) piller (Ni-Cd, Ni-Mh, Li-ion, Li-po, akü)',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
