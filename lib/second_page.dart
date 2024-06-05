import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/my_provider_class.dart';
import 'package:provider_state/my_second_provider_class.dart';
import 'package:provider_state/provider_extension.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<MySecondProviderClass>(
              builder: (context, provider, child) {
                return Text(
                  provider.text2,
                  style: Theme.of(context).textTheme.headlineLarge,
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.mySecondProvider.changeData2('Second Page');
              },
              child: const Text('Change Text'),
            ),
          ],
        ),
      ),
    );
  }
}
