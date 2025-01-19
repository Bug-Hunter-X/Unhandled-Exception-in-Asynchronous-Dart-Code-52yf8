```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return jsonResponse;
    } else {
      print('HTTP error: ${response.statusCode}');
      return null; //Or throw a custom exception with details
    }
  } catch (e) {
    print('Error fetching data: $e');
    return null; // Or throw a custom exception
  }
}
```