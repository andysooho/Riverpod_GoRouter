import 'package:flutter/material.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';

class PrivateScreen extends StatelessWidget {
  const PrivateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      title: 'PrivateScreen',
      body: Center(
        child: Text('Private Screen'),
      ),
    );
  }
}
