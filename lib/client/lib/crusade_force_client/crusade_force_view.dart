import 'package:client/crusade_force_client/crusade_force_view_model.dart';
import 'package:flutter/material.dart';

class CrusadeForceView extends StatefulWidget {
  final CrusadeForceViewModel viewModel;

  CrusadeForceView(this.viewModel, {key: Key}) : super(key: key);

  @override
  _CrusadeForceViewState createState() => _CrusadeForceViewState();
}

class _CrusadeForceViewState extends State<CrusadeForceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Hello World'),
      ),
    );
  }
}
