import 'package:flutter/material.dart';
import 'package:flutter_deserialize_json_response/launch_client.dart';
import 'package:flutter_deserialize_json_response/models/launch.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({super.key});

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  Launch _launch = const Launch(
    name: 'name',
    flightNumber: 0,
    success: true,
  );

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final LaunchClient launchClient = LaunchClient();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_launch.name, style: textTheme.headlineSmall),
        Text(_launch.flightNumber.toString(), style: textTheme.headlineSmall),
        Text(_launch.success.toString(), style: textTheme.headlineSmall),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () async => await launchClient.getLaunch()
                  .then((launch) => setState(() => _launch = launch)),
              child: const Text('getLaunch'),
            ),
            ElevatedButton(
              onPressed: () async => await launchClient.getLaunches()
                  .then((launches) => setState(() => _launch = launches.first)),
              child: const Text('getLaunches'),
            )
          ],
        )
      ],
    );
  }
}
