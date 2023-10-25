import 'package:flutter/material.dart';
import 'home_drawer.dart';
import 'waste_info.dart';

class HomeScreen extends StatelessWidget {
  final String email;

  HomeScreen({required this.email});

  // Geri Dönüşüm bilgilerine yönlendiren işlevler
  void navigateToWasteInfo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      drawer: HomeDrawer(email: email),
      appBar: AppBar(
        title: const Text('Atıklar', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.green.shade300,
        toolbarHeight: 90.0,
      ),

      body: SingleChildScrollView(
        child: Row(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () => navigateToWasteInfo(context, KagitInfoScreen()),
                    child: Container(
                      width: 125,
                      height: 125,
                      margin: const EdgeInsets.only(left: 40, top: 16),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/assets/kagit.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () => navigateToWasteInfo(context, OrganikInfoScreen()),
                    child: Container(
                      width: 125,
                      height: 125,
                      margin: const EdgeInsets.only(left: 40, top: 24),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/assets/organik.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () => navigateToWasteInfo(context, PilInfoScreen()),
                    child: Container(
                      width: 125,
                      height: 125,
                      margin: const EdgeInsets.only(left: 40, top: 24),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/assets/pil.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () => navigateToWasteInfo(context, CamInfoScreen()),
                    child: Container(
                      width: 125,
                      height: 125,
                      margin: const EdgeInsets.only(left: 40, top: 16),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/assets/cam.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () => navigateToWasteInfo(context, KompozitInfoScreen()),
                    child: Container(
                      width: 125,
                      height: 125,
                      margin: const EdgeInsets.only(left: 40, top: 16),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/assets/kompozit.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child : Column(
                children: [
                  InkWell(
                    onTap: () => navigateToWasteInfo(context, MetalInfoScreen()),
                    child: Container(
                      width: 125,
                      height: 125,
                      margin: const EdgeInsets.only(left: 45, top: 16),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/assets/metal.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () => navigateToWasteInfo(context, ElektronikInfoScreen()),
                    child: Container(
                      width: 125,
                      height: 125,
                      margin: const EdgeInsets.only(left: 45, top: 24),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/assets/elektronik.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () => navigateToWasteInfo(context, PlastikInfoScreen()),
                    child: Container(
                      width: 125,
                      height: 125,
                      margin: const EdgeInsets.only(left: 40, top: 16),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/assets/plastik.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () => navigateToWasteInfo(context, BitkiselYagInfoScreen()),
                    child: Container(
                      width: 125,
                      height: 125,
                      margin: const EdgeInsets.only(left: 40, top: 16),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/assets/bitkisel.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () => navigateToWasteInfo(context, AhsapInfoScreen()),
                    child: Container(
                      width: 125,
                      height: 125,
                      margin: const EdgeInsets.only(left: 40, top: 16),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/assets/ahsap.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
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
