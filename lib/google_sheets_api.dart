import 'package:gsheets/gsheets.dart';

class GoogleSheetsAPI {
  static const _credentials = r'''
{
  "type": "service_account",
  "project_id": "monay-tracker",
  "private_key_id": "54f35294a80080290accac630a1d6ecef24568ca",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDGwse6XA5BTjV4\n9RbtcFbbCYR8gPP1W43TB5owZ+seaaTNIyXhorQ2/0m7yhNSmBR9BgdGEDlfYcR+\ng5yyaR+IeRRKeUpqDnjkrkoWsEREGpGinxDlqgWWP/s5NUaaKI/WdG9R+YmQN7H3\nE5x8QE5qU8mC9+KKlNN043mfEnfdN8vJ2GV8S0i3gZIWg1Up27yppa+S9Fjag8qS\nJh8dOp5UmnmrgFeYRf1L2ciECczKdXvxetJO8SOYtNZ3tYcKdbYv07OGgVzLWA2Q\np89RcPe4VdMlXIIwPyVvpXzUEm+qhBfa2KuVIs+IEbxdVQp2gQv7MPGhuhrTTQ8b\n103IoGhZAgMBAAECggEAHQqGs58Rt3my7G/QdXRC7JF7xH6e+/bwRlOdCXzq6LBX\nk7WSqmDjOLSc/w2WkdcwtIJ1+5xmlZ4rtK827QaDxKVUUVFe4xd8Pdriw7qQ2ZaR\njZOfnL72lAPYiXz+9N//rD5U/u2ZVkjHqFSQOm4MRxLjpaQ3JeJ68bWZpqQZ1BOP\nBIot4SEPGqkyIwzdnkKsRXQf2r/pL2e9bqyPdAfkx3j1tF6XCvEYb4YSCKtQykl7\n0wT0t8/qIZtOWTs7eanCK1xfAZKTMxSCSzpVZMINndzV3pMqnBDqpQqd7ZA3kMOS\nAfYSq8VSTG+PD2MFiOTkC3IM6q3fPElDRJC1HZi1FQKBgQD6wESxXnF2MKIlBvWV\nA7V/KdCFWnU7EsB+3l+4jYHcVy8IEZ/mWQjyBQn9BvoZ/wbVU/CJ5tqCURFks+F3\naKLZ08VMSTKFULXsjfgCjROadG5lN0mAtntfTo9D8ikwhnY6asDknID7tIS3/lpL\n45Q1WYDV6SimHoLWenFCEGDbqwKBgQDK6+fH9EfNNIynGDl5ha55PQ6r3kPkdAha\n5y99gq8RMbpnU4WLDuqu2RkPHaMFA370s76ZqKKYXQOprdQGO7pAczq+8p+IRi3i\n9T/PgBvRvZG52oxZMapts6fhkCBqBfuzWkHyf8HPEvpGvsIB1MK7uk7LT5+VNgdW\n0XfApCzoCwKBgCSzL1qmcATUaWbx9c+xk0bhX9ukubPDstjewzPHwlH1kLSln7mf\nHmgNxMB73O8hHGbsui/00dZw9xK+ISnQ7sTi8eWQcQyCG55byQjWjR/2GpJF3UQx\ncS0p2l4fe1fW1kcGiOTs4xPz/9jOKXkh/fcw+mJUldZ6cLvjf+AjdYmxAoGBAMF9\nfk6InKqMEA4IqE067ioG0WWKk5xUE99yEDOSmBJCI6cA2hbFy3ub4Swrq1VNhxIY\nDoeAaEH2d1alPMYQz8FC3uJSgVI08O43wne+hUhShZD9VtR56jOemlcX0gCm4eGc\nD8QGlCw6wVER9fY/BMxyk02EB/wEP61GIPUc1wEPAoGANm4S3yOLVY23dBHAQ7cE\nudS1xD2uIxmBe5rhsCSkIcnkM4a4oMH9jGeYdsvvqx8YcNsS+Adgm8157HSGrnLh\nAqBgOKnu/4sJ1MLnVOAwVzToEvpPtkYugzaX/l0eG7Ine2bOqbsghrm346IEhclX\nlz8RtpESdyCsJUpLpGgNJlU=\n-----END PRIVATE KEY-----\n",
  "client_email": "money-tracker@monay-tracker.iam.gserviceaccount.com",
  "client_id": "111653966060637247528",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/money-tracker%40monay-tracker.iam.gserviceaccount.com"
}

''';
  static final _spreadsheetId = '10bFmfCfp_DZmEinRsIpMFQgzosZUmXAmnvKEte0vPCE';
  static final gsheets = GSheets(_credentials);
  static Worksheet? _worksheet;
  Future init() async {
    final ss = await gsheets.spreadsheet(_spreadsheetId);
    _worksheet = ss.worksheetByTitle('worksheet1');
  }
}
