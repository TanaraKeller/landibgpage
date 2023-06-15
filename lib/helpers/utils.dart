import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

String appName = 'Sôma';

const Color verde1 = Color(0xFF778762);
const Color azul6 = Color(0xFF20C4FA);
const Color azul5 = Color(0xFF46CEFA);
const Color azul4 = Color(0xFF66D6FA);
const Color azul3 = Color(0xFF81DDFA);
const Color azul2 = Color(0xFF96E3FA);
const Color azul1 = Color(0xFFA9E8FA);
const Color azul0 = Color(0xFFDDF6FD);
const Color bege1 = Color.fromARGB(255, 190, 173, 145);
const Color bege2 = Color.fromARGB(255,250, 241, 226);
const Color verde = Color.fromARGB(255, 0, 146, 123);
const Color vermelho = Color.fromARGB(255, 251, 0, 88);
const Color dividerColor = Color.fromARGB(255, 200, 200, 200);
const Color textColor = Color.fromARGB(255, 100, 100, 100);
const Color darkTextColor = Color.fromARGB(255, 40, 40, 40);
const Color shadowColor = Color.fromARGB(26, 0, 0, 0);
const Color lightnessColor = Color.fromARGB(240, 255, 255, 255);
const Color dourado1 = Color(0xFFBEAD91);
const Color dourado2 = Color.fromARGB(255, 224, 162, 41);
const Color background1 = Color.fromARGB(36,190,173,145);
const Color mediumText = Color.fromARGB(255, 119, 119, 119);

final GlobalKey<NavigatorState> applicationNavKey = GlobalKey<NavigatorState>();

const Map<String, String> statesAbbreviations = {
  'Acre': 'AC',
  'Alagoas': 'AL',
  'Amapá': 'AP',
  'Amazonas': 'AM',
  'Bahia ': 'BA',
  'Ceará': 'CE',
  'Distrito Federal ': 'DF',
  'Espírito Santo': 'ES',
  'Goiás': 'GO',
  'Maranhão': 'MA',
  'Mato Grosso': 'MT',
  'Mato Grosso do Sul': 'MS',
  'Minas Gerais': 'MG',
  'Pará': 'PA',
  'Paraíba': 'PB',
  'Paraná': 'PR',
  'Pernambuco': 'PE',
  'Piauí': 'PI',
  'Rio de Janeiro': 'RJ',
  'Rio Grande do Norte': 'RN',
  'Rio Grande do Sul': 'RS',
  'Rondônia': 'RO',
  'Roraima': 'RR',
  'Santa Catarina': 'SC',
  'São Paulo': 'SP',
  'Sergipe': 'SE',
  'Tocantins': 'TO',
};

bool _showingLoading = false;
Future showLoading(BuildContext context, {String? message}) async {
  if (!_showingLoading) {
    _showingLoading = true;
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05, vertical: MediaQuery.of(context).size.width * 0.05),
              child: Material(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                      height: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
                      child: Text(const TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w300) as String),
                    )
                  ],
                )
              ),
            ),
          ),
        );
      }
    );
  }
}

closeLoading(BuildContext context) {
  if (_showingLoading) {
    Navigator.pop(context);
    _showingLoading = false;
  }
}

