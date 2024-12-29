```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! 
      // Process JSON response here
      final jsonResponse = json.decode(response.body);
      // Access data from jsonResponse here
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e'); //Error is not specific enough
    rethrow; // rethrow the exception to be handled at a higher level
  }
}
```