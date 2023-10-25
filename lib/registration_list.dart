import 'package:flutter/material.dart';
import 'package:hikodfinalproject/registration.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';


class RegistrationListScreen extends StatelessWidget {
  final currencyFormat = NumberFormat("#,##0.00", "tr_TR");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text('Haftalık Atık Kayıtları', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Builder(
              builder: (context) {
                final taskListProvider = Provider.of<RegistrationList>(context);
                return ListView.builder(
                  itemCount: taskListProvider.tasks.length,
                  itemBuilder: (context, index) {
                    final geridonusumkaydi = taskListProvider.tasks[index];
                    double ucret = geridonusumkaydi.metal * 1 + geridonusumkaydi.plastik * 1.15 + geridonusumkaydi.cam * 0.15 + geridonusumkaydi.kagit * 0.9 + geridonusumkaydi.organik * 1.5 + geridonusumkaydi.ahsap * 1.38 + geridonusumkaydi.bitkiselYag * 19 + geridonusumkaydi.elektronik * 23 + geridonusumkaydi.kompozit * 0.3 + geridonusumkaydi.pil * 20;
                    String formattedUcret = currencyFormat.format(ucret);

                    return Dismissible(
                      key: Key(taskListProvider.tasks[index].metal.toString()),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        taskListProvider.tasks.removeAt(index);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Geri dönüştürülmüş METAL atık kg: ${geridonusumkaydi.metal}', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                          Text('Geri dönüştürülmüş PLASTİK atık kg : ${geridonusumkaydi.plastik}', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                          Text('Geri dönüştürülmüş CAM atık kg : ${geridonusumkaydi.cam}', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                          Text('Geri dönüştürülmüş KAĞIT atık kg : ${geridonusumkaydi.kagit}', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                          Text('Geri dönüştürülmüş ORGANİK atık kg : ${geridonusumkaydi.organik}', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                          Text('Geri dönüştürülmüş AHŞAP atık kg : ${geridonusumkaydi.ahsap}', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                          Text('Geri dönüştürülmüş BİTKİSEL YAĞ atık l : ${geridonusumkaydi.bitkiselYag}', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                          Text('Geri dönüştürülmüş ELEKTRONİK atık kg : ${geridonusumkaydi.elektronik}', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                          Text('Geri dönüştürülmüş KOMPOZİT atık kg : ${geridonusumkaydi.kompozit}', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                          Text('Geri dönüştürülmüş PİL atık kg : ${geridonusumkaydi.pil}', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                          Text('Kullanıcıya ödenen ücret : $formattedUcret TL', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const Divider(
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
