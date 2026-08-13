import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    String? nextUrl = 'https://rickandmortyapi.com/api/character';

    while (nextUrl != null) {
      final response = await http.get(Uri.parse(nextUrl));

      if (response.statusCode != 200) {
        throw 'Failed to load characters: ${response.statusCode}';
      }

      Map<String, dynamic> data = jsonDecode(response.body);
      List<dynamic> results = data['results'];

      for (var character in results) {
        print(character['name']);
      }

      nextUrl = data['info']['next'];
    }
  } catch (error) {
    print('error caught: $error');
  }
}
