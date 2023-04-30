import 'package:flutter_deserialize_json_response/launch_client.dart';
import 'package:flutter_deserialize_json_response/models/launch.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  late http.Client httpClient;
  late LaunchClient launchClient;

  setUpAll(() {
    registerFallbackValue(FakeUri());
  });

  setUp(() {
    httpClient = MockHttpClient();
    launchClient = LaunchClient(httpClient: httpClient);
  });

  group('launch', () {
    test('returns a launch', () async {
      final response = MockResponse();
      when(() => response.statusCode).thenReturn(200);
      when(() => response.body).thenReturn('''
        {
          "flight_number": 1,
          "name": "first launch",
          "success": false
        }
        ''');
      when(() => httpClient.get(any())).thenAnswer((_) async => response);
      final actual = await launchClient.getLaunch();
      expect(
        actual,
        isA<Launch>()
            .having((l) => l.flightNumber, 'flightNumber', 1)
            .having((l) => l.name, 'name', 'first launch')
            .having((l) => l.success, 'success', false),
      );
    });

    test('returns multiple launches', () async {
      final response = MockResponse();
      when(() => response.statusCode).thenReturn(200);
      when(() => response.body).thenReturn('''
        [
          {
            "flight_number": 1,
            "name": "first launch",
            "success": false
          },
          {
            "flight_number": 2,
            "name": "second launch",
            "success": true
          }
        ]
        ''');
      when(() => httpClient.get(any())).thenAnswer((_) async => response);

      final actual = await launchClient.getLaunches();

      expect(
        actual.first,
        isA<Launch>()
            .having((l) => l.flightNumber, 'flightNumber', 1)
            .having((l) => l.name, 'name', 'first launch')
            .having((l) => l.success, 'success', false),
      );
      expect(actual, isA<List<Launch>>());
    });
  });
}
