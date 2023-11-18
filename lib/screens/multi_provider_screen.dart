import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_examples/provider/multi_provider.dart';

class MultiProvider extends StatefulWidget {
  const MultiProvider({Key? key}) : super(key: key);

  @override
  State<MultiProvider> createState() => _MultiProviderState();
}

class _MultiProviderState extends State<MultiProvider> {
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('provider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<MiultiProvider>(builder: (context, value, child) {
            print('just consumer');
            return Slider(
              min: 0,
              max: 1,
              value: value.value,
              onChanged: (val) {
                value.setValue(val);
              },
            );
          }),
          Consumer<MiultiProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(value.value),
                    ),
                    child: Center(child: Text('container 1')),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(value.value),
                    ),
                    child: Center(child: Text('container 1')),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
