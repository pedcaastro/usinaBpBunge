import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PainelController extends StatefulWidget {
  const PainelController({Key? key}) : super(key: key);

  @override
  State<PainelController> createState() => _PainelControllerState();
}

class _PainelControllerState extends State<PainelController> {
  

  TextEditingController tch = TextEditingController();
  TextEditingController tiro = TextEditingController();
  TextEditingController velocidade = TextEditingController();

  double? qteManobra;
  double? minEmHora;
  double? dado;
  double? potenciaSManobra = 0;
  double? potencialCManobra = 0;
  double? potencial = 0;

  void calculate() {
    double tchDouble = double.parse(tch.text);
    double tiroDouble = double.parse(tiro.text);
    double velocidadeDouble = double.parse(velocidade.text);

    potenciaSManobra = velocidadeDouble / 6666;
    qteManobra = velocidadeDouble / tiroDouble;
    minEmHora = (qteManobra! * 50) / 60;
    dado = minEmHora! / 60;
    potencialCManobra = potenciaSManobra! * dado!;
    potencial = tchDouble * potencialCManobra!;

    setState(() {
      
    });
  }

  void limpar(){
    setState(() {
      tch.text = '';
      velocidade.text = '';
      tiro.text = '';
      potencial = 0;
      potenciaSManobra =0;
      potencialCManobra =0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    'TCH',
                    style: GoogleFonts.goldman(),
                  )),
              controller: tch,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    'Velocidade',
                    style: GoogleFonts.goldman(),
                  )),
              controller: tiro,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    'Tiro',
                    style: GoogleFonts.goldman(),
                  )),
              controller: velocidade,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: calculate,
                  child: Text(
                    'Calcular',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
                TextButton(
                  onPressed: limpar,
                  child: Text(
                    'Limpar',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Column(
                children: [
                  Card(
                    elevation: 1,
                    child: ListTile(
                      leading: Icon(Icons.data_exploration_sharp),
                      title: Text('Potêncial sem manobra'),
                      subtitle: Text(potenciaSManobra.toString()),
                    ),
                  ),
                  Card(
                    elevation: 1,
                    child: ListTile(
                      leading: Icon(Icons.data_exploration_outlined),
                      title: Text('Potêncial com manobra'),
                      subtitle: Text(potencialCManobra.toString()),
                    ),
                  ),
                  Card(
                    elevation: 1,
                    child: ListTile(
                      leading: Icon(Icons.data_thresholding_outlined),
                      title: Text('Potêncial'),
                      subtitle: Text(potencial.toString()),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
