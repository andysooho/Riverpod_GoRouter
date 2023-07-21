import 'package:flutter/material.dart';
import 'package:riverpod_gorouter/common/layout/default_layout.dart';

class NamedScreen extends StatelessWidget {
  const NamedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      title: 'NamedScreen',
      body: Text(
        'NamedScreen',
        textAlign: TextAlign.center,),
    );
  }
}

