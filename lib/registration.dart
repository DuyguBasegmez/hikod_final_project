import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GeriDonusumKaydi {
  final double metal;
  final double plastik;
  final double organik;
  final double cam;
  final double kagit;
  final double ahsap;
  final double kompozit;
  final double bitkiselYag;
  final double elektronik;
  final double pil;

  GeriDonusumKaydi(this.metal, this.plastik, this.cam, this.kagit, this.organik,this.ahsap,this.bitkiselYag,this.elektronik,this.kompozit,this.pil,);
}

class RegistrationList with ChangeNotifier {
  List<GeriDonusumKaydi> tasks = [];

  RegistrationList() {
  }

  void addTask(double metal, double plastik, double cam, double kagit, double organik, double ahsap, double bitkisel_yag, double elektronik, double kompozit, double pil){
    final newTask = GeriDonusumKaydi(metal, plastik, cam, kagit, organik,ahsap,bitkisel_yag,elektronik,kompozit,pil);
    tasks.add(newTask);
    notifyListeners();
  }
}

class GeriDonusumScreen extends StatefulWidget {
  @override
  _GeriDonusumScreenState createState() => _GeriDonusumScreenState();
}

class _GeriDonusumScreenState extends State<GeriDonusumScreen> {
  final TextEditingController metalController = TextEditingController();
  final TextEditingController plastikController = TextEditingController();
  final TextEditingController camController = TextEditingController();
  final TextEditingController kagitController = TextEditingController();
  final TextEditingController organikController = TextEditingController();
  final TextEditingController ahsapController = TextEditingController();
  final TextEditingController bitkisel_yagController = TextEditingController();
  final TextEditingController elektronikController = TextEditingController();
  final TextEditingController kompozitController = TextEditingController();
  final TextEditingController pilController = TextEditingController();

  @override
  void dispose() {
    metalController.dispose();
    plastikController.dispose();
    camController.dispose();
    kagitController.dispose();
    organikController.dispose();
    ahsapController.dispose();
    bitkisel_yagController.dispose();
    elektronikController.dispose();
    kompozitController.dispose();
    pilController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text('Geri Dönüşüm Kaydı Oluştur', style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child : SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: metalController,
                decoration: InputDecoration(labelText: 'Metal atık miktarı'),
              ),
              TextField(
                controller: plastikController,
                decoration: InputDecoration(labelText: 'Plastik'),
              ),
              TextField(
                controller: camController,
                decoration: InputDecoration(labelText: 'Cam '),
              ),
              TextField(
                controller: kagitController,
                decoration: InputDecoration(labelText: 'Kağıt '),
              ),
              TextField(
                controller: organikController,
                decoration: InputDecoration(labelText: 'Organik '),
              ),
              TextField(
                controller: ahsapController,
                decoration: InputDecoration(labelText: 'Ahşap '),
              ),
              TextField(
                controller: bitkisel_yagController,
                decoration: InputDecoration(labelText: 'Bitkisel Yağ '),
              ),
              TextField(
                controller: elektronikController,
                decoration: InputDecoration(labelText: 'Elektronik'),
              ),
              TextField(
                controller: kompozitController,
                decoration: InputDecoration(labelText: 'Kompozit '),
              ),
              TextField(
                controller: pilController,
                decoration: InputDecoration(labelText: 'Pil '),
              ),

              ElevatedButton(
                onPressed: () {
                  final taskListProvider = Provider.of<RegistrationList>(context, listen: false);
                  taskListProvider.addTask(
                    double.parse(metalController.text),
                    double.parse(plastikController.text),
                    double.parse(camController.text),
                    double.parse(kagitController.text),
                    double.parse(organikController.text),
                    double.parse(ahsapController.text),
                    double.parse(bitkisel_yagController.text),
                    double.parse(elektronikController.text),
                    double.parse(kompozitController.text),
                    double.parse(pilController.text),
                  );

                  metalController.clear();
                  plastikController.clear();
                  camController.clear();
                  kagitController.clear();
                  organikController.clear();
                  ahsapController.clear();
                  bitkisel_yagController.clear();
                  elektronikController.clear();
                  kompozitController.clear();
                  pilController.clear();

                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.green.shade300,
                ),
                child: const Text('Görev Ekle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


