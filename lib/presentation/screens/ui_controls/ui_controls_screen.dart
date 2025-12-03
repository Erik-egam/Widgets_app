// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});
  static const String name = 'ui_controls_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI controls')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car , plane , boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controls adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),

        RadioListTile(
          title: const Text('By Car'),
          subtitle: const Text('Viajar por carro'),
          value: Transportation.car,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.car;
          }),
          ),
        RadioListTile(
          title: const Text('By bote'),
          subtitle: const Text('Viajar por bote'),
          value: Transportation.boat,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.boat;
          }),
          ),
        RadioListTile(
          title: const Text('By avion'),
          subtitle: const Text('Viajar por avion'),
          value: Transportation.plane,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.plane;
          }),
          ),
        RadioListTile(
          title: const Text('By submarino'),
          subtitle: const Text('Viajar por submarino'),
          value: Transportation.submarine,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.submarine;
          }),
          ),
        

        
      ],
    );
  }
}
