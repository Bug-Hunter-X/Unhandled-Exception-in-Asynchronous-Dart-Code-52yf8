```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonResponse = json.decode(response.body);
      // Access data from the JSON response
      print(jsonResponse['key']);
    } else {
      // Handle HTTP errors
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error fetching data: $e');
    //Rethrow the exception to be handled by a higher level function
    rethrow; 
  }
}
```