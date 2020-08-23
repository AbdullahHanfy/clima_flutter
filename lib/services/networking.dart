import 'dart:convert';
import 'package:http/http.dart' as http;

class Network {
  final String url;
  Network(this.url);

  Future getData() async {
    http.Response data = await http.get(url);

    if (data.statusCode == 200) {
      String response = data.body;
      return jsonDecode(response);
    } else {
      print(data.statusCode);
    }
  }
}
